SELECT
    test::NamedObject {
        abc,
        defd,
        name: {
            @lang
        }
    }
FILTER
    test::`NamedObject`.name = 'Test';





SELECT        : keyword.declaration.edgeql, source.edgeql
    test      : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
NamedObject   : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
abc           : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
        defd  : source.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
        name  : source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
@             : source.edgeql, support.other.linkproperty.edgeql
lang          : source.edgeql, support.other.linkproperty.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
FILTER        : keyword.declaration.edgeql, source.edgeql
    test      : source.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
`NamedObject` : source.edgeql, string.interpolated.edgeql
.name         : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
Test          : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql