type Foo {
    property avg_rating :=
        math::mean(__source__.<movie[IS Review].rating);
}




type          : keyword.declaration.edgeql, source.edgeql
 Foo          : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
property      : keyword.declaration.edgeql, source.edgeql
 avg_rating   : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
math          : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
mean          : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
__source__    : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
.<            : keyword.operator.navigation.edgeql, meta.function-call.edgeql, source.edgeql
movie         : meta.function-call.edgeql, source.edgeql
[             : meta.function-call.edgeql, punctuation.parenthesis.begin.edgeql, source.edgeql
IS            : keyword.declaration.edgeql, meta.function-call.edgeql, source.edgeql
 Review       : meta.function-call.edgeql, source.edgeql
]             : meta.function-call.edgeql, punctuation.parenthesis.end.edgeql, source.edgeql
.rating       : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql

