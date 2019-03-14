import pathlib
import textwrap

from . import meta


def main():
    eql_templ = pathlib.Path(__file__).parent / 'edgeql-template.syntax.yaml'
    eql_base = pathlib.Path(__file__).resolve().parent.parent / 'grammars'

    # with open(eql_templ, 'rt') as f:
    #     syntax = f.read()

    unreserved_keywords = meta.EdgeQL.unreserved_keywords
    reserved_keywords = meta.EdgeQL.reserved_keywords
    builtins = sorted(set(
        meta.EdgeQL.type_builtins + meta.EdgeQL.constraint_builtins +
        meta.EdgeQL.fn_builtins))
    stdmodules = meta.EdgeQL.module_builtins
    # Operators need to be sorted from longest to shortest to match
    # correctly. Lexicographical sort is added on top of that for
    # stability, but is not itself important.
    operators = sorted(meta.EdgeQL.operators + (':=',),
                       key=lambda x: (len(x), x), reverse=True)
    # the operator symbols need to be escaped
    operators = ['\\' + '\\'.join(op) for op in operators]

    # navigation punctuation needs to be processed similar to operators
    navigation = sorted(meta.EdgeQL.navigation,
                        key=lambda x: (len(x), x), reverse=True)
    # the operator symbols need to be escaped
    navigation = ['\\' + '\\'.join(nav) for nav in navigation
                  # exclude '.' for the moment
                  if nav != '.']

    # inject operators
    with open(eql_base / 'operators.inc.syntax.yaml', 'wt') as f:
        f.write(textwrap.dedent(rf'''
        ---
        match: |
          (?x)
            # EdgeQL-specific multi-char ops
            {' | '.join(operators)}
        ...
        '''))

if __name__ == '__main__':
    main()
