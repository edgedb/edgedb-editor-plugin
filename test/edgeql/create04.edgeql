CREATE FUNCTION std::len(array<std::anytype>) -> std::int64
    FROm Sql $a$
        SELECT array_length($1, 1)::bigint
    $a$;
array<std::anytype>  # back to edgeql




CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
FUNCTION      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
len           : source.edgeql, support.function.builtin.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
array         : source.edgeql, storage.type.edgeql
<             : source.edgeql, storage.type.placeholder.begin.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
anytype       : source.edgeql, support.type.builtin.edgeql
>             : source.edgeql, storage.type.placeholder.end.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
FROm          : keyword.declaration.edgeql, source.edgeql
 Sql          : source.edgeql
$a$           : source.edgeql, string.quoted.edgeql
        SELECT array_length($1, 1)::bigint : source.edgeql
              : source.edgeql
$a$           : source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
array         : source.edgeql, storage.type.edgeql
<             : source.edgeql, storage.type.placeholder.begin.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
anytype       : source.edgeql, support.type.builtin.edgeql
>             : source.edgeql, storage.type.placeholder.end.edgeql
              : source.edgeql
#             : comment.line.number-sign.edgeql, punctuation.definition.comment.edgeql, source.edgeql
 back to edgeql : comment.line.number-sign.edgeql, source.edgeql
