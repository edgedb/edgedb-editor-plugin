WITH MODULE test
FOR C IN {Card}
UNION (C.name, Card.name);




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
FOR           : keyword.declaration.edgeql, source.edgeql
 C            : source.edgeql
IN            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
Card          : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
UNION         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
C.name        : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
 Card.name    : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
