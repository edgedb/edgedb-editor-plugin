abstract constraint length ON (len(<std::str>__subject__)) {
    errmessage := 'invalid {__subject__}';
}
}



abstract      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
 length       : source.edgeql
ON            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
len           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
<             : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
std           : meta.function-call.edgeql, source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, meta.function-call.edgeql, source.edgeql
str           : meta.function-call.edgeql, source.edgeql, support.type.builtin.edgeql
>             : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
__subject__   : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
errmessage    : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
invalid {__subject__} : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : source.edgeql
