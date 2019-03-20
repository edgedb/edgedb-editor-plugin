type Foo {
    property bar {
        constraint math::max()
    }
}




type          : keyword.declaration.edgeql, source.edgeql
 Foo          : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
property      : keyword.declaration.edgeql, source.edgeql
 bar          : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
math          : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
max           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
