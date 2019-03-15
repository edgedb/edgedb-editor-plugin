.PHONY: all build test devenv release regen-grammar ci-test


all: devenv build test


test: ci-test
	atom -t test/atom-spec


ci-test: build
	./node_modules/.bin/syntaxdev test \
		--tests test/**/*.eql --syntax grammars/src/edgeql.syntax.yaml


build:
	./node_modules/.bin/syntaxdev build-cson \
		--in grammars/src/edgeql.syntax.yaml \
		--out grammars/edgeql.cson

	./node_modules/.bin/syntaxdev build-plist \
		--in grammars/src/edgeql.syntax.yaml \
		--out grammars/edgeql.tmLanguage

	./node_modules/.bin/syntaxdev atom-spec \
		--package-name edgedb \
		--tests test/**/*.eql \
		--syntax grammars/src/edgeql.syntax.yaml \
		--out test/atom-spec/edgeql-spec.js


devenv:
	npm install --dev


regen-grammar:
	out=$$(edb gen-meta-grammars edgeql) && \
		echo "$$out" > generator/meta.py
	PYHTONPATH=$(shell pwd) python -m generator.gen_grammar
