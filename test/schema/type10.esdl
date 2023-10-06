type User {
  created: datetime {
    rewrite insert using (datetime_of_statement());
  }
  modified: datetime {
    rewrite update using (
      datetime_of_statement()
      if __specified__.modified
      else .modified
    );
  }
}



type          : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
created       : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
datetime      : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
rewrite       : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
insert        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
using         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
datetime_of_statement : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
  modified    : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
datetime      : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
rewrite       : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
update        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
using         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
datetime_of_statement : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
if            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
__specified__ : source.edgeql, support.other.link.builtin.edgeql
.modified     : source.edgeql
              : source.edgeql
else          : keyword.declaration.edgeql, source.edgeql
 .modified    : source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql