WITH MODULE test
GROUP User
USING _ := User.name
BY _
INTO User
UNION count(User.<owner);




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
GROUP         : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
USING         : keyword.declaration.edgeql, source.edgeql
 _            : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
 User.name    : source.edgeql
BY            : keyword.declaration.edgeql, source.edgeql
 _            : source.edgeql
INTO          : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
UNION         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
count         : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
User          : meta.function-call.edgeql, source.edgeql
.<            : keyword.operator.navigation.edgeql, meta.function-call.edgeql, source.edgeql
owner         : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
