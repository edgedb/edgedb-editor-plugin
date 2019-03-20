DELETE test::DeleteTest;




DELETE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
DeleteTest    : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
