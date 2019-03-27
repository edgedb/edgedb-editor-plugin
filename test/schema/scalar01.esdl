scalar type constraint_length extending str {
    constraint max_len_value(16);
    constraint max_len_value(10);
    constraint min_len_value(5);
    constraint min_len_value(8);
}



scalar        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
type          : keyword.declaration.edgeql, source.edgeql
 constraint_length  : source.edgeql
extending     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
max_len_value : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
16            : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
max_len_value : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
10            : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
min_len_value : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
5             : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
min_len_value : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
8             : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql

