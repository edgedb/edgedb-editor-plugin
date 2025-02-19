import {
  workspace,
  ExtensionContext,
  window,
  LogOutputChannel,
  ExtensionMode,
  StatusBarItem,
  StatusBarAlignment,
  commands,
  QuickPickItem,
} from "vscode";

import {
  CloseAction,
  CloseHandlerResult,
  Command,
  ErrorAction,
  ErrorHandlerResult,
  Executable,
  LanguageClient,
  LanguageClientOptions,
  Message,
  ServerOptions,
  TransportKind,
} from "vscode-languageclient/node";
import { Distribution, ensureInstalled, removeInstallation } from "./install";

let client: LanguageClient;
let clientLogger: LogOutputChannel;
let useLocalDevServer: boolean;

let edbStatusBarItem: StatusBarItem;
let edgedbLsDist: Distribution;

export async function activate(context: ExtensionContext) {
  clientLogger = window.createOutputChannel("EdgeDB Language Client", {
    log: true,
  });
  clientLogger.info("Extension activated.");

  useLocalDevServer = context.extensionMode == ExtensionMode.Development;
  useLocalDevServer = false;

  const statusCommandId = 'edgedb.status';
  context.subscriptions.push(commands.registerCommand(statusCommandId, statusCommand));

  edbStatusBarItem = window.createStatusBarItem(StatusBarAlignment.Left);
  edbStatusBarItem.name = `EdgeDB`;
  edbStatusBarItem.tooltip = "EdgeDB Language Server: click for options...";
  edbStatusBarItem.command = statusCommandId;
  setStatus(null);
  context.subscriptions.push(edbStatusBarItem);

  await startClient();
}

function setStatus(status: string | null) {
  if (status) {
    edbStatusBarItem.text = `$(loading~spin) EdgeDB: ${status}`;
  } else {
    edbStatusBarItem.text = `$(database) EdgeDB`;
  }
}

async function statusCommand() {
  const options: { id: string, item: QuickPickItem }[] = [
    { id: 'restart', item: { label: 'Restart language server', } },

  ];

  if (edgedbLsDist) {
    const parts = edgedbLsDist.version.split('+');
    let version: string;
    if (parts.length == 2) {
      version = parts[0] + ', date: ' + parts[1].split('.')[0];
    } else {
      version = edgedbLsDist.version;
    }

    options.push(
      {
        id: 'update', item: {
          label: 'Update to latest version',
          description: `Current version: ${version}`,
        }
      },
    )
  }

  const selected = await window.showQuickPick(options.map(o => o.item), {
    title: client?.name ?? 'EdgeDB Language Server',
  });
  const selectedId = options.find(o => o.item == selected).id;

  if (selectedId == 'restart') {
    await startClient();
  } else if (selectedId == 'update') {
    if (!(edgedbLsDist?.managed ?? false)) {
      window.showErrorMessage('Cannot update gel-ls, because it has not been installed by this extension.')
      return;
    }
    clientLogger.info(`Removing installation of gel-ls: ${edgedbLsDist.command}`)
    await removeInstallation(edgedbLsDist);
    await startClient();
  }
}

async function getServerDistribution(): Promise<Distribution | null> {
  if (useLocalDevServer) {
    return {
      command: "python",
      args: ["-m", "edb.language_server.main"],
      version: "local dev",
      managed: false,
    };
  }

  try {
    setStatus('installing');
    return await ensureInstalled(clientLogger);
  } catch (e) {
    clientLogger.error(e.message);
    window.showErrorMessage(`Cannot find gel-ls: ${e.message}`);
    return null;
  } finally {
    setStatus(null);
  }
}

async function startClient() {
  // stop client if it is running
  let clientStopped = Promise.resolve();
  if (client?.isRunning()) {
    clientLogger.info("Stopping server...");
    clientStopped = client.stop(5000);
  }

  edbStatusBarItem.show();

  edgedbLsDist = await getServerDistribution();
  if (!edgedbLsDist) {
    return;
  }

  await clientStopped;

  const executable: Executable = {
    command: edgedbLsDist.command,
    args: edgedbLsDist.args,
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
    documentSelector: [{ scheme: "file", language: "edgeql" }],
    synchronize: {
      fileEvents: workspace.createFileSystemWatcher("dbschema/"),
    },
    connectionOptions: {
      maxRestartCount: 5,
    },
    errorHandler: new ErrorHandler(),
  };

  // Create the language client and start the client.
  client = new LanguageClient(
    "edgedb-ls-vscode",
    `EdgeDB Language Server`,
    serverOptions,
    clientOptions
  );

  clientLogger.info(
    `Starting gel-ls, version ${edgedbLsDist.version}, command ${edgedbLsDist.command} ${edgedbLsDist.args.join(" ")}`
  );
  setStatus('starting');
  await client.start();

  clientLogger.info(`Started.`);
  setStatus(null);
}

class ErrorHandler {
  error(
    error: Error,
    message: Message | undefined,
    count: number | undefined
  ): ErrorHandlerResult {
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
      message: "server stopped, restarting",
      handled: true,
    };
  }
}

export function deactivate(): Thenable<void> | undefined {
  if (!client) {
    return undefined;
  }
  return client.stop().then(() => {
    edbStatusBarItem.hide();
  });
}
