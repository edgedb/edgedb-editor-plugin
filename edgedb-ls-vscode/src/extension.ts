import { workspace, ExtensionContext, window, LogOutputChannel, ExtensionMode } from 'vscode';

import {
    CloseAction,
    CloseHandlerResult,
    ErrorAction,
    ErrorHandlerResult,
    Executable,
    LanguageClient,
    LanguageClientOptions,
    Message,
    ServerOptions,
    TransportKind
} from 'vscode-languageclient/node';
import { Distribution, ensureInstalled } from './install';

let client: LanguageClient;
let clientLogger: LogOutputChannel;
let useLocalDevServer: boolean;

export async function activate(context: ExtensionContext) {
    clientLogger = window.createOutputChannel('EdgeDB Language Client', { log: true })
    clientLogger.info("Extension activated.")

    useLocalDevServer = context.extensionMode == ExtensionMode.Development;    

    await startClient();
}

async function getServerDistribution(): Promise<Distribution | null> {
    if (useLocalDevServer) {
        return {
            command: 'python',
            args: ['-m', 'edb.language_server.main'],
            version: 'local dev'
        }
    }

    try {
        return await ensureInstalled(clientLogger);
    } catch (e) {
        clientLogger.error(e.message);
        window.showErrorMessage(`Cannot find edgedb-ls: ${e.message}`)
        return null;
    }
}

async function startClient() {
    // stop client if it is running
    let clientStopped = Promise.resolve();
    if (client?.isRunning()) {
        clientLogger.info('Stopping server...');
        clientStopped = client.stop(5000);
    }

    const dist = await getServerDistribution();
    if (!dist) {
        return;
    }

    await clientStopped;

    const executable: Executable = {
        command: dist.command,
        args: dist.args,
        transport: TransportKind.stdio,
    };

    // If the extension is launched in debug mode then the debug server options are used
    // Otherwise the run options are used
    const serverOptions: ServerOptions = {
        run: executable,
        debug: executable,
    };

    // Options to control the language client
    const clientOptions: LanguageClientOptions = {
        // Register the server for plain text documents
        documentSelector: [{ scheme: 'file', language: 'edgeql' }],
        synchronize: {
            fileEvents: workspace.createFileSystemWatcher('dbschema/')
        },
        connectionOptions: {
            maxRestartCount: 5,
        },
        errorHandler: new ErrorHandler(),
    };

    // Create the language client and start the client.
    client = new LanguageClient(
        'edgedb-ls-vscode',
        'EdgeDB Language Server',
        serverOptions,
        clientOptions
    );

    clientLogger.info(`Starting edgedb-ls, version ${dist.version}, command ${dist.command} ${dist.args.join(' ')}`);
    client.start();
    clientLogger.info(`Started.`)
}

class ErrorHandler {
    error(error: Error, message: Message | undefined, count: number | undefined): ErrorHandlerResult {
        clientLogger.warn(`Server error [${count}]: ${error} ${message}`);
        return {
            action: ErrorAction.Continue,
            handled: true,
        };
    }
    /**
     * The connection to the server got closed.
     */
    closed(): CloseHandlerResult {
        return {
            action: CloseAction.Restart,
            message: 'server stopped, restarting',
            handled: true,
        };
    }
}

export function deactivate(): Thenable<void> | undefined {
    if (!client) {
        return undefined;
    }
    return client.stop();
}
