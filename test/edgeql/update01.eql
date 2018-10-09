WITH MODULE test
UPDATE UpdateTest
FILTER UpdateTest.name = 'update-test1'
SET {
    status := (SELECT Status FILTER Status.name = 'Closed')
};




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
UPDATE        : keyword.declaration.edgeql, source.edgeql
 UpdateTest   : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 UpdateTest.name  : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
update-test1  : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
SET           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
status        : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 Status       : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 Status.name  : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
Closed        : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
