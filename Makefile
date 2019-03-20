.PHONY: all build test devenv release regen-grammar ci-test publish


all: devenv build


test: ci-test
	atom -t test/atom-spec


ci-test: build
	./node_modules/.bin/syntaxdev test \
		--tests test/**/*.eql --syntax grammars/src/edgeql.syntax.yaml
	./node_modules/.bin/syntaxdev test \
		--tests test/**/*.eschema --syntax grammars/src/edgeql.syntax.yaml


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


fetch-metagrammar:
	out=$$(edb gen-meta-grammars edgeql) && \
		echo "$$out" > generator/meta
	mv generator/meta generator/meta~
	echo "#!/usr/bin/env python\n$$(cat generator/meta~)" > generator/meta
	rm generator/meta~


regen-grammar:
	PYHTONPATH=$(shell pwd) python generator/gen_grammar


publish: test
	apm publish patch
	vsce publish
