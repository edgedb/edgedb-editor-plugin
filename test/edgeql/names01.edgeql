CREATE DATABASE mytestdb;
CREATE DATABASE `mytestdb`;
CREATE DATABASE `SET`;
CREATE DATABASE `CREATE`;





CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
 mytestdb     : source.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`mytestdb`    : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`SET`         : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql
CREATE        : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
DATABASE      : keyword.declaration.edgeql, source.edgeql
              : source.edgeql
`CREATE`      : source.edgeql, string.interpolated.edgeql
;             : punctuation.statement.delimiter.edgeql, source.edgeql