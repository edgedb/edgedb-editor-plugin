abstract constraint max($param:any) on (()) {
    expr := __subject__ <= $param;
    errmessage := 'Maximum allowed value for {subject} is {param}.';
}




abstract      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
max           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
$             : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
param         : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
:             : meta.function-call.edgeql, punctuation.declaration.delimiter.edgeql, source.edgeql
any           : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
on            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
expr          : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
__subject__   : source.edgeql, support.other.link.builtin.edgeql
              : source.edgeql
<=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
param         : constant.language.variable.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
    errmessage  : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
Maximum allowed value for {subject} is {param}. : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
