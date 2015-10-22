.PHONY: all test release devenv

all: devenv release

test: release
#	Run tests
	./node_modules/.bin/syntaxdev test --tests test/**/*.eschema --syntax grammars/EdgeSchema.syntax.yaml

devenv:
	npm install syntaxdev@0.0.9

release:
	./node_modules/.bin/syntaxdev build-plist --in grammars/EdgeSchema.syntax.yaml --out grammars/EdgeSchema.tmLanguage
	./node_modules/.bin/syntaxdev scopes --syntax grammars/EdgeSchema.syntax.yaml > misc/schema_scopes
