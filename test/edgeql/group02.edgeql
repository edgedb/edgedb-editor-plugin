WITH MODULE test
GROUP Issue
USING B :=  Issue.status.name
BY B
INTO Issue
UNION _ := (
    sum := sum(<int64>Issue.number),
    status := B,
)
FILTER
    _.sum > 5
ORDER BY
    B;




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
GROUP         : keyword.declaration.edgeql, source.edgeql
 Issue        : source.edgeql
USING         : keyword.declaration.edgeql, source.edgeql
 B            : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
  Issue.status.name : source.edgeql
BY            : keyword.declaration.edgeql, source.edgeql
 B            : source.edgeql
INTO          : keyword.declaration.edgeql, source.edgeql
 Issue        : source.edgeql
UNION         : keyword.declaration.edgeql, source.edgeql
 _            : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
    sum       : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
sum           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
<             : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
int64         : meta.function-call.edgeql, source.edgeql, support.type.builtin.edgeql
>             : keyword.operator.edgeql, meta.function-call.edgeql, source.edgeql
Issue.number  : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    status    : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
 B            : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
    _.sum     : source.edgeql
>             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
5             : constant.numeric.integer.edgeql, source.edgeql
ORDER         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
BY            : keyword.declaration.edgeql, source.edgeql
    B         : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
