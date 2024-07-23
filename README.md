# EdgeDB extension for Visual Studio Code

Extension that provides support for EdgeDB query language (EdgeQL) and  EdgeDB Schema Definition Language (ESDL).

![](https://edgedb.github.io/edgedb-editor-plugin/edgedb-st.png)

(The color scheme used in the screenshot is
[Chromodynamics](https://github.com/MagicStack/Chromodynamics).)

## Features

- syntax highlighting,
- syntax highlighting in embedded code blocks,
- error reporting via language server,

## Language server

When activated (when .edgeql or .esdl files are opened) this extension will
download and start edgedb-ls, which is the language server for EdgeDB.

It will download it into `.local/share/edgedb/edgedb-ls` on Linux,
into `Library/Application Support/edgedb/edgedb-ls` and MacOS
or `AppData/Roaming/edgedb/Data/edgedb-ls` on Windows.
If this installation exists or edgedb-ls is in system path,
it will not be re-downloaded.

![](./readmes/vscode-status-bar.png)

Currently, edgedb-ls supports a very limited set of features, including only
error reporting in .edgeql files.
It will read `dbschema/` in the root of the workspace and use that schema
to validate any queries found in the workspace.

![](./readmes/vscode-name-error.png)

Multi-workspace projects are not yet supported.

## Syntax highlighting for embedded code blocks

This extension also provides syntax highlighting within string literals of other languages such as JavaScript and Go.
To enable the highlighting, include `# edgeql` in a backtick-quoted string.
This will make it easier to spot syntax errors and make your embedded queries more readable.

```go
// Go
query := `#edgeql
select Example { * };
`
```

```javascript
// JavaScript
const query = `
  # edgeql
  SELECT ... 
`;
```

Other languages are not yet implemented, but we are accepting pull requests at [edgedb-editor-plugin](https://github.com/edgedb/edgedb-editor-plugin).