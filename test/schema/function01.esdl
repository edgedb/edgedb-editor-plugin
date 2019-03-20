function len() -> std::int64 {
    from sql function 'length'
}




function      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
len           : source.edgeql, support.function.builtin.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
from          : keyword.declaration.edgeql, source.edgeql
 sql          : source.edgeql
function      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
length        : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
