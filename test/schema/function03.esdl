function myfunc($arg1: str, $arg2: str = 'DEFAULT',
                variadic $arg3:std::int64) -> set of int64 {
    volatile := true;
    description := 'myfunc sample';
    from sql $$SELECT blarg;$$;
}




function      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
myfunc        : source.edgeql
(             : punctuation.parenthesis.begin.edgeql, source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
arg1          : constant.language.variable.edgeql, source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
              : source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
arg2          : constant.language.variable.edgeql, source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
              : source.edgeql
str           : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
=             : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
DEFAULT       : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
,             : punctuation.separator.element.edgeql, source.edgeql
                 : source.edgeql
variadic      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
$             : constant.language.variable.edgeql, source.edgeql
arg3          : constant.language.variable.edgeql, source.edgeql
:             : punctuation.declaration.delimiter.edgeql, source.edgeql
std           : source.edgeql, support.other.module.builtin.edgeql
::            : keyword.operator.namespace.edgeql, source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
)             : punctuation.parenthesis.end.edgeql, source.edgeql
              : source.edgeql
->            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
set           : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
of            : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
int64         : source.edgeql, support.type.builtin.edgeql
              : source.edgeql
{             : punctuation.parenthesis.begin.edgeql, source.edgeql
              : source.edgeql
volatile      : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
true          : constant.language.boolean.true.edgeql, source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
    description  : source.edgeql
:=            : keyword.operator.edgeql, source.edgeql
              : source.edgeql
'             : punctuation.definition.string.begin.edgeql, source.edgeql, string.quoted.edgeql
myfunc sample : source.edgeql, string.quoted.edgeql
'             : punctuation.definition.string.end.edgeql, source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
              : source.edgeql
from          : keyword.declaration.edgeql, source.edgeql
 sql          : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
SELECT blarg; : source.edgeql
$$            : source.edgeql, string.quoted.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
}             : punctuation.parenthesis.end.edgeql, source.edgeql
