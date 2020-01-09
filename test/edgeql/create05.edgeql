CREATE FUNCTION test::my_edgeql_func2(std::str)
        -> sys::Concept
    FROM EdgeQL $$
        SELECT
            sys::Concept
        FILTER sys::Concept.name = $1
    $$;




CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
FUNCTION      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
test          : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
my_edgeql_func2 : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
sys           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Concept       : source.edgeql
              : source.edgeql
FROM          : keyword.declaration.edgeql, source.edgeql
 EdgeQL       : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
              : source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
sys           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Concept       : source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
sys           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Concept.name  : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
1             : constant.language.variable.edgeql, source.edgeql
              : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
