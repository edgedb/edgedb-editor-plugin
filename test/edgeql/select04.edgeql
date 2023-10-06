SELECT Foo {
    bar: {
        baz := (SELECT Doo {foo}),
        spam,
    },
    back_foo := Foo.<foo,
    ham,
};





SELECT        : keyword.declaration.edgeql, source.edgeql
 Foo          : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
bar           : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
baz           : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 Doo          : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
foo           : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
        spam  : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    back_foo  : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
 Foo          : source.edgeql
.<            : keyword.operator.navigation.edgeql, source.edgeql
foo           : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    ham       : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
