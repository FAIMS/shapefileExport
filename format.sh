#!/bin/bash

# Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"
thisdir=$(pwd)
cd $2
ruby $thisDir/string_formatter_tester.rb $1/db.sqlite3 shape.format > $3/shape.out

