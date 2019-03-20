INSERT std::delete_pointer;




INSERT        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
delete_pointer : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
