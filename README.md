# EdgeDB Editor Plugin [![Build Status](https://travis-ci.com/edgedb/edgedb-editor-plugin.svg?branch=master)](https://travis-ci.com/edgedb/edgedb-editor-plugin)

This is a package with syntax highlighter for EdgeDB languages: EdgeQL and
ESDL (EdgeDB Schema Definition Language).  The plugin is designed to work with
[Sublime Text](https://packagecontrol.io/packages/EdgeDB),
[Atom](https://atom.io/packages/edgedb) and
[Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=magicstack.edgedb).

![](https://edgedb.github.io/edgedb-editor-plugin/edgedb-st.png)

(The color scheme used in the screenshot is
[Chromodynamics](https://github.com/MagicStack/Chromodynamics).)


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