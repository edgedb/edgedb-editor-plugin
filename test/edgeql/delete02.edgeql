WITH MODULE test
DELETE (SELECT DeleteTest
        FILTER DeleteTest.name = 'bad name');




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
DELETE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 DeleteTest   : source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 DeleteTest.name  : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
bad name      : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
