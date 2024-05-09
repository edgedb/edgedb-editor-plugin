/* --------------------------------------------------------------------------------------------
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for license information.
 * ------------------------------------------------------------------------------------------ */

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

let client: LanguageClient;
let client_logger: LogOutputChannel;

export function activate(context: ExtensionContext) {
    client_logger = window.createOutputChannel('EdgeDB Language Client', { log: true })
    client_logger.info("Extension activated.")

    const executable: Executable = {
        command: "python",
        args: ["-m", "edb.language_server.main"],
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
            maxRestartCount: 0, // don't restart a crashed server
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
    client_logger.info("Client started.")
}

class ErrorHandler {
    error(error: Error, message: Message | undefined, count: number | undefined): ErrorHandlerResult {
        client_logger.warn(`Server error [${count}]: ${error} ${message}`);
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
