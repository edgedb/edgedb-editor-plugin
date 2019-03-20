type Issue extending foo.bar::NamedObject, Text {
    multi link watchers to User;
    required single link owner to User;
}




type          : keyword.declaration.edgeql, source.edgeql
 Issue        : source.edgeql
extending     : keyword.declaration.edgeql, source.edgeql
 foo.bar      : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
NamedObject, Text  : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
multi         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
link          : keyword.declaration.edgeql, source.edgeql
 watchers     : source.edgeql
to            : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
required      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
single        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
link          : keyword.declaration.edgeql, source.edgeql
 owner        : source.edgeql
to            : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
