#!/bin/bash

# Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"
ruby string_formatter_tester.rb db.sqlite3 $1/shape.format > $2/shape.out

