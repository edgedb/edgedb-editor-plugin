WITH MODULE test
SELECT User{
    name,
    owner_of := (
        SELECT User.<owner[IS Issue] {
            number
        } FILTER <int64>(.number) < 3
    ),
} FILTER User.name = 'Elvis';





WITH          : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
MODULE        : keyword.declaration.edgeql, source.edgeql
 test         : source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
name          : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
    owner_of  : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
SELECT        : keyword.declaration.edgeql, source.edgeql
 User         : source.edgeql
.<            : keyword.operator.navigation.edgeql, source.edgeql
owner         : source.edgeql
[             : punctuation.parenthesis.begin.edgeql, source.edgeql
IS            : keyword.declaration.edgeql, source.edgeql
 Issue        : source.edgeql
]             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
number        : source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
<             : keyword.operator.cast.begin.edgeql, source.edgeql
int64         : meta.typecast.edgeql, source.edgeql, support.type.builtin.edgeql
>             : keyword.operator.cast.end.edgeql, source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
.number       : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
<             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
3             : constant.numeric.integer.edgeql, source.edgeql
              : source.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
 User.name    : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
Elvis         : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
