INSERT test::InsertTest {
    name := 'insert nested',
    l2 := 0,
    subordinates := (
        SELECT test::Subordinate
        FILTER test::Subordinate.name LIKE 'subtest%'
    )
};




INSERT        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
InsertTest    : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
name          : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
insert nested : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    l2        : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
0             : constant.numeric.integer.edgeql, source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    subordinates  : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Subordinate   : source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Subordinate.name  : source.edgeql
LIKE          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
subtest%      : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
