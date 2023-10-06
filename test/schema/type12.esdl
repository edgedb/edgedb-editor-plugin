type RangeTest {
    required rval: range<int64>;
    index pg::gist on (.rval);
}




type          : keyword.declaration.edgeql, source.edgeql
 RangeTest    : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
required      : keyword.declaration.edgeql, source.edgeql
 rval         : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
range         : source.edgeql, support.type.builtin.edgeql
<             : keyword.operator.edgeql, source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
>             : keyword.operator.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
index         : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
pg            : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
gist          : source.edgeql, support.other.index.builtin.edgeql
              : source.edgeql
on            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
.rval         : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
