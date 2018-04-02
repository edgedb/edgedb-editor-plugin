.PHONY: all test release devenv

all: devenv release

test: release
#	Run tests
	./node_modules/.bin/syntaxdev test --tests test/**/*.eschema --syntax grammars/EdgeDBSchema.syntax.yaml
	./node_modules/.bin/syntaxdev test --tests test/**/*.eql --syntax grammars/EdgeQL.syntax.yaml

devenv:
	npm install syntaxdev@0.0.16

release:
	./node_modules/.bin/syntaxdev build-plist --in grammars/EdgeDBSchema.syntax.yaml --out grammars/EdgeDBSchema.tmLanguage
	./node_modules/.bin/syntaxdev build-cson --in grammars/EdgeDBSchema.syntax.yaml --out grammars/EdgeDBSchema.cson
	./node_modules/.bin/syntaxdev scopes --syntax grammars/EdgeDBSchema.syntax.yaml > misc/schema_scopes
	./node_modules/.bin/syntaxdev build-plist --in grammars/EdgeQL.syntax.yaml --out grammars/EdgeQL.tmLanguage
	./node_modules/.bin/syntaxdev build-cson --in grammars/EdgeQL.syntax.yaml --out grammars/EdgeQL.cson
	./node_modules/.bin/syntaxdev scopes --syntax grammars/EdgeQL.syntax.yaml > misc/edgeql_scopes
