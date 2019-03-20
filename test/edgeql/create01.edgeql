CreatE CONSTRAINT std::regexp EXTENDING std::constraint {
    SET errmessage := 'invalid {subject}';
    SET expr := re_test(subject, $0);
};




CreatE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
CONSTRAINT    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
regexp        : source.edgeql, support.function.constraint.builtin.edgeql
              : source.edgeql
EXTENDING     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
constraint    : source.edgeql, support.function.constraint.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
SET           : keyword.declaration.edgeql, source.edgeql
 errmessage   : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
invalid {subject} : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
SET           : keyword.declaration.edgeql, source.edgeql
 expr         : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
re_test       : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
subject       : meta.function-call.edgeql, source.edgeql
,             : meta.function-call.edgeql, punctuation.separator.arguments.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
$             : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
0             : constant.language.variable.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
