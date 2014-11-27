#!/bin/bash

# Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"
ruby string_formatter_tester.rb $1/db.sqlite3 $2/shape.format > $3/shape.out

