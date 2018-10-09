.PHONY: build test devenv

SYNTAXES = eschema edgeql
CSONS = $(addprefix grammars/,$(addsuffix .cson,$(SYNTAXES)))
PLISTS = $(addprefix grammars/,$(addsuffix .tmLanguage,$(SYNTAXES)))


build: $(CSONS) $(PLISTS)


test: build
	#	Run tests
	./node_modules/.bin/syntaxdev test --tests test/**/*.eql --syntax grammars/edgeql.syntax.yaml
	./node_modules/.bin/syntaxdev test --tests test/**/*.eschema --syntax grammars/eschema.syntax.yaml


devenv:
	npm install --dev syntaxdev@0.0.16


%.cson: %.syntax.yaml
	./node_modules/.bin/syntaxdev build-cson --in $< --out $@


%.tmLanguage: %.syntax.yaml
	./node_modules/.bin/syntaxdev build-plist --in $< --out $@
