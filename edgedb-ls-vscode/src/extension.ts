import { workspace, ExtensionContext, window, LogOutputChannel } from 'vscode';

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

export async function activate(context: ExtensionContext) {
    clientLogger = window.createOutputChannel('EdgeDB Language Client', { log: true })
    clientLogger.info("Extension activated.")

    try {
        const dist = await ensureInstalled(clientLogger, context);
        await startServer(dist);
    } catch (e) {
        clientLogger.error(e.message);
        window.showErrorMessage(`Cannot find edgedb-ls: ${e.message}`)
    }
}

async function startServer(edgedb_ls_dist: Distribution) {
    if (client?.isRunning()) {
        clientLogger.info('Stopping server...');
        await client.stop(5000);
    }

    clientLogger.info(`Starting edgedb-ls, version ${edgedb_ls_dist.version} with command ${edgedb_ls_dist.command}`);
    const executable: Executable = {
        command: edgedb_ls_dist.command,
        args: [],
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

    // Start the client. This will also launch the server
    client.start();
    clientLogger.info("Client started.")
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
