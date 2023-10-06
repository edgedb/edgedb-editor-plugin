type User {
  required body: str;
  index fts::index on (
    fts::with_options(.body,
        language := fts::Language.eng,
        weight_category := fts::Weight.A
    )
  );
}




type          : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
required      : keyword.declaration.edgeql, source.edgeql
 body         : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
index         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
fts           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
index         : source.edgeql, support.other.index.builtin.edgeql
              : source.edgeql
on            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
fts           : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
with_options  : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
.body         : meta.function-call.edgeql, source.edgeql
,             : meta.function-call.edgeql, punctuation.separator.arguments.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
language      : meta.function-call.edgeql, source.edgeql, variable.parameter.definition.edgeql
              : meta.function-call.edgeql, source.edgeql
:=            : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
fts           : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
Language      : meta.function-call.edgeql, source.edgeql, support.type.builtin.edgeql
.eng          : meta.function-call.edgeql, source.edgeql
,             : meta.function-call.edgeql, punctuation.separator.arguments.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
weight_category : meta.function-call.edgeql, source.edgeql, variable.parameter.definition.edgeql
              : meta.function-call.edgeql, source.edgeql
:=            : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
fts           : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
Weight        : meta.function-call.edgeql, source.edgeql, support.type.builtin.edgeql
.A            : meta.function-call.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
