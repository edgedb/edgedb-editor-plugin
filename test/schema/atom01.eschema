scalar basic extending int64 {
    title := 'Basic Atom';
    default := 2;

    constraint min(0);
    constraint max(123456);
    delegated constraint expr on (__subject__ % 2 = 0);
}




scalar        : keyword.declaration.edgeql, source.edgeql
 basic        : source.edgeql
extending     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
title         : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
Basic Atom    : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
default       : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
2             : constant.numeric.integer.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
min           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
0             : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
max           : meta.function-call.edgeql, source.edgeql, support.function.builtin.edgeql
(             : meta.function-call.edgeql, punctuation.definition.arguments.begin.edgeql, source.edgeql
123456        : constant.numeric.integer.edgeql, meta.function-call.edgeql, source.edgeql
)             : meta.function-call.edgeql, punctuation.definition.arguments.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
delegated     : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
constraint    : keyword.declaration.edgeql, source.edgeql
 expr         : source.edgeql
on            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
__subject__   : source.edgeql, support.other.link.builtin.edgeql
              : source.edgeql
%             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
2             : constant.numeric.integer.edgeql, source.edgeql
              : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
0             : constant.numeric.integer.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
