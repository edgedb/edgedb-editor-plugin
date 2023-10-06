CREATE FUNCTION test::call1(
    s: str,
    VARIADIC a: int64,
    NAMED ONLY suffix: str = '-suf',
) -> std::str
    FROM EdgeQL $$
        SELECT 'foo';
    $$;





CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
FUNCTION      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
test          : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
call1         : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
    s         : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
VARIADIC      : keyword.declaration.edgeql, source.edgeql
 a            : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
NAMED ONLY    : keyword.declaration.edgeql, source.edgeql
 suffix       : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
-suf          : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
FROM          : keyword.declaration.edgeql, source.edgeql
 EdgeQL       : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
              : source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
foo           : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
