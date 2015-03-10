#!/bin/bash

echo $1

ruby string_formatter_tester.rb db.sqlite3 $1 > $1.output

cat $1.output
