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
  ThemeColor,
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
let gelLsDist: Distribution;

export async function activate(context: ExtensionContext) {
  clientLogger = window.createOutputChannel("Gel Language Client", {
    log: true,
  });
  clientLogger.info("Extension activated.");

  useLocalDevServer = context.extensionMode == ExtensionMode.Development;
  useLocalDevServer = false;

  const statusCommandId = 'gel.status';
  context.subscriptions.push(commands.registerCommand(statusCommandId, statusCommand));

  edbStatusBarItem = window.createStatusBarItem(StatusBarAlignment.Left);
  edbStatusBarItem.name = `Gel`;
  edbStatusBarItem.tooltip = "Gel Language Server: click for options...";
  edbStatusBarItem.command = statusCommandId;
  setStatus(null);
  context.subscriptions.push(edbStatusBarItem);

  context.subscriptions.push(commands.registerCommand("gel.gel-ls.download", downloadCommand));
  context.subscriptions.push(commands.registerCommand("gel.gel-ls.restart", restartCommand));

  await startClient();
}

function setStatus(status: string | null, icon = 'database', tooltip: string | null = null) {
  if (status) {
    edbStatusBarItem.text = `$(${icon}) Gel: ${status}`;
  } else {
    edbStatusBarItem.text = `$(${icon}) Gel`;
  }
  if (icon == 'error') {
    edbStatusBarItem.color = new ThemeColor('statusBarItem.errorForeground');
    edbStatusBarItem.backgroundColor = new ThemeColor('statusBarItem.errorBackground');
  } else {
    edbStatusBarItem.color = null;
    edbStatusBarItem.backgroundColor = null;
  }

  if (tooltip) {
    edbStatusBarItem.tooltip = tooltip;
  } else if (gelLsDist) {
    const parts = gelLsDist.version.split('+');
    let version_display: string;
    if (parts.length == 2) {
      version_display = parts[0] + ', date: ' + parts[1].split('.')[0];
    } else {
      version_display = gelLsDist.version;
    }
    edbStatusBarItem.tooltip = `gel-ls version: ${version_display}`;
  } else {
    edbStatusBarItem.tooltip = null;
  }
}

async function statusCommand() {
  commands.executeCommand("workbench.action.quickOpen", ">Gel Language Server: ");
}

async function restartCommand() {
  await startClient();
}

async function downloadCommand() {
  if (gelLsDist) {
    if (!gelLsDist.managed) {
      window.showErrorMessage('Cannot update gel-ls, because it has not been installed by this extension.')
      return;
    }
  }

  await removeInstallation();

  try {
    await startClient();
  } catch (e) {
    clientLogger.error(`Err: ${e}`);
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
    setStatus('installing', 'loading~spin');
    const r = await ensureInstalled(clientLogger);
    setStatus(null);
    return r;
  } catch (e) {
    clientLogger.error(e.message);
    const message = `Cannot start gel-ls: ${e.message}`;
    window.showErrorMessage(message);
    setStatus('error', 'error', message);
    return null;
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

  gelLsDist = await getServerDistribution();
  if (!gelLsDist) {
    return;
  }

  await clientStopped;

  const executable: Executable = {
    command: gelLsDist.command,
    args: gelLsDist.args,
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
    `Starting gel-ls, version ${gelLsDist.version}, command ${gelLsDist.command} ${gelLsDist.args.join(" ")}`
  );
  setStatus('starting', 'loading~spin');
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
