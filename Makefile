.PHONY: build test devenv

SYNTAXES = edgeql
CSONS = $(addprefix grammars/,$(addsuffix .cson,$(SYNTAXES)))
PLISTS = $(addprefix grammars/,$(addsuffix .tmLanguage,$(SYNTAXES)))


build: $(CSONS) $(PLISTS)


test: build
	#	Run tests
	./node_modules/.bin/syntaxdev test --tests test/**/*.eql --syntax grammars/edgeql.syntax.yaml


devenv:
	npm install --dev syntaxdev@0.0.16


regen-grammar:
	out=$$(edb gen-meta-grammars edgeql) && \
		echo "$$out" > generator/meta.py
	PYHTONPATH=$(shell pwd) python -m generator.gen_grammar


%.cson: %.syntax.yaml
	./node_modules/.bin/syntaxdev build-cson --in $< --out $@


%.tmLanguage: %.syntax.yaml
	./node_modules/.bin/syntaxdev build-plist --in $< --out $@
