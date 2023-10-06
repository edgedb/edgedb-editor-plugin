function some_func($foo: std::int64 = 42) -> std::str {
    from sql "SELECT 'life';";
}




function      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
some_func     : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
foo           : constant.language.variable.edgeql, source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
42            : constant.numeric.integer.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
from          : keyword.declaration.edgeql, source.edgeql
 sql          : source.edgeql
"             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
SELECT 'life'; : source.edgeql, string.quoted.edgeql
"             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
