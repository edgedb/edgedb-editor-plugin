abstract constraint maxlength($param:any) extending max_value, len_value {
    errmessage := '{$subject} must be no longer than {$param} characters.';
}



abstract      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
maxlength     : entity.name.function.edgeql, meta.function-call.edgeql, source.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
$             : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
param         : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
:             : meta.function-call.edgeql, punctuation.declaration.delimiter.edgeql, source.edgeql
any           : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
extending     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
max_value     : source.edgeql, support.function.constraint.builtin.edgeql
,             : source.edgeql
len_value     : source.edgeql, support.function.constraint.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
errmessage    : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
{$subject} must be no longer than {$param} characters. : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
