# EdgeDB Editor Plugin [![Build Status](https://travis-ci.com/edgedb/edgedb-editor-plugin.svg?branch=master)](https://travis-ci.com/edgedb/edgedb-editor-plugin)

This is a package with syntax highlighter for EdgeDB languages: EdgeQL and
ESDL (EdgeDB Schema Definition Language). The plugin is designed to work with
[Sublime Text](https://packagecontrol.io/packages/EdgeDB),
[Atom](https://atom.io/packages/edgedb) and
[Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=magicstack.edgedb).

![](https://edgedb.github.io/edgedb-editor-plugin/edgedb-st.png)

(The color scheme used in the screenshot is
[Chromodynamics](https://github.com/MagicStack/Chromodynamics).)

## Installation

In **Atom** and **Visual Studio Code** install the `EdgeDB` package.

In **Sublime Text**, install the `EdgeDB` package via "Package Control".

## Contributing

We are accepting pull requests for anything that improves this extension:
new features, fixes or documentation. We are not accepting code refactors.

## Publishing

To publish a new version:

- increment the version number in `package.json` to e.g. `0.1.8`,
- commit and tag the changes with tag of format `v0.1.8`,
- push to GitHub.

This will start the GitHub Action that will publish to the [Azure Marketplace](https://marketplace.visualstudio.com/) and [Open VSX Registry](https://open-vsx.org/).

To publish a prerelease version, tag the commit with `v0.1.8-pre`.
Do not add `-pre` to the version in `package.json`.
A regular release cannot have the same number as the prerelease version,
so (at least) the patch number must be increased. For example,
after publishing `v0.1.8-pre`, we would publish `v0.1.9`.
