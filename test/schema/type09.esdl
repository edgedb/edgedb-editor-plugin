type Person {
  trigger log_insert after update for each do (
    stuff(__new__.id, __old__.id)
  );

  trigger log_insert after update for all do (
    stuff(__new__.id, __old__.id)
  );
}





type          : keyword.declaration.edgeql, source.edgeql
 Person       : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
trigger       : keyword.declaration.edgeql, source.edgeql
 log_insert   : source.edgeql
after         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
update        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
for           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
each          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
do            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
stuff         : entity.name.function.edgeql, meta.function-call.edgeql, source.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
__new__       : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
.id           : meta.function-call.edgeql, source.edgeql
,             : meta.function-call.edgeql, punctuation.separator.arguments.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
__old__       : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
.id           : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
              : source.edgeql
trigger       : keyword.declaration.edgeql, source.edgeql
 log_insert   : source.edgeql
after         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
update        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
for           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
all           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
do            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
stuff         : entity.name.function.edgeql, meta.function-call.edgeql, source.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
__new__       : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
.id           : meta.function-call.edgeql, source.edgeql
,             : meta.function-call.edgeql, punctuation.separator.arguments.edgeql, source.edgeql
              : meta.function-call.edgeql, source.edgeql
__old__       : meta.function-call.edgeql, source.edgeql, support.other.link.builtin.edgeql
.id           : meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
