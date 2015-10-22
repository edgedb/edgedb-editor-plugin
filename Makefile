.PHONY: all test release devenv

all: devenv release

test: release
#	Run tests
	./node_modules/.bin/syntaxdev test --tests test/*.eschema --syntax grammars/edgeql.syntax.yaml

devenv:
	npm install syntaxdev@0.0.9

release:
	./node_modules/.bin/syntaxdev build-plist --in grammars/edgeql.syntax.yaml --out grammars/EdgeQL.tmLanguage
	./node_modules/.bin/syntaxdev scopes --syntax grammars/edgeql.syntax.yaml > misc/scopes
