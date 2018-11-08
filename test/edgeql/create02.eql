CREATE AGGREGATE std::array_agg(SET OF std::anytype) -> array<std::anytype>
    FROM SQL AGGREGATE 'array_agg';




CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
AGGREGATE     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
array_agg     : source.edgeql, support.function.builtin.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
SET           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
OF            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
anytype       : source.edgeql, support.type.builtin.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
array         : source.edgeql, storage.type.edgeql
<             : source.edgeql, storage.type.placeholder.begin.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
anytype       : source.edgeql, support.type.builtin.edgeql
>             : source.edgeql, storage.type.placeholder.end.edgeql
              : source.edgeql
FROM          : keyword.declaration.edgeql, source.edgeql
 SQL          : source.edgeql
AGGREGATE     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
array_agg     : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
