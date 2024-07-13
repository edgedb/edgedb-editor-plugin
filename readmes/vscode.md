# EdgeDB extension for Visual Studio Code

Extension that provides support for EdgeDB query language (EdgeQL) and  EdgeDB Schema Definition Language (ESDL).

![](https://edgedb.github.io/edgedb-editor-plugin/edgedb-st.png)

(The color scheme used in the screenshot is
[Chromodynamics](https://github.com/MagicStack/Chromodynamics).)

## Features

- syntax highlighting,
- syntax highlighting in embedded code blocks,


## Installation Instructions

In **Atom** and **Visual Studio Code** install the `edgedb` package.

In **Sublime Text**, install the `EdgeDB` package via "Package Control".


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