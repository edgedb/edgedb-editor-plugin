SELECT
    mod2::Person {
        id,
        name,
        groups: {
            id,
            name,
        }
    }




SELECT        : keyword.declaration.edgeql, source.edgeql
    mod2      : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
Person        : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
id            : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
        name  : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
        groups : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
id            : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
            name : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql