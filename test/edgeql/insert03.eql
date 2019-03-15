WITH MODULE test
INSERT InsertTest {
    name := 'insert nested 2',
    l2 := 0,
    subordinates := (
        SELECT Subordinate {
            @comment := (SELECT 'comment ' + Subordinate.name)
        }
        FILTER Subordinate.name IN {'subtest 3', 'subtest 4'}
    )
};




WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
INSERT        : keyword.declaration.edgeql, source.edgeql
 InsertTest   : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
name          : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
insert nested 2 : source.edgeql, string.quoted.edgeql
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
 Subordinate  : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
@             : source.edgeql, support.other.linkproperty.edgeql
comment       : source.edgeql, support.other.linkproperty.edgeql
              : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
comment       : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
              : source.edgeql
+             : keyword.operator.edgeql, source.edgeql
 Subordinate.name : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 Subordinate.name  : source.edgeql
IN            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
subtest 3     : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
subtest 4     : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
