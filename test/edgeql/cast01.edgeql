SELECT NOT <bool>Foo.baz;



SELECT        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
NOT           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
<             : keyword.operator.cast.begin.edgeql, source.edgeql
bool          : meta.typecast.edgeql, source.edgeql, support.type.builtin.edgeql
>             : keyword.operator.cast.end.edgeql, source.edgeql
Foo.baz       : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
