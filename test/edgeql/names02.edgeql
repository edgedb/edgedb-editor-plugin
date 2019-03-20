CREATE DATABASE `mytest\"db\"`;
CREATE DATABASE `mytest\'db\'`;
CREATE DATABASE `some.db`;





CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`mytest\"db\"` : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`mytest\'db\'` : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`some.db`     : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql