abstract type OwnedObject {
    required link owner to User;
}



abstract      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
type          : keyword.declaration.edgeql, source.edgeql
 OwnedObject  : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
required      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
link          : keyword.declaration.edgeql, source.edgeql
 owner        : source.edgeql
to            : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
