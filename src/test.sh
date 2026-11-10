#!/bin/bash

Expected="hello test"

OUTPUT=$(node -e "console.log(require('./src/app.js')('test'))")

# 1. Added spaces inside the brackets
# 2. Used $OUTPUT and $Expected instead of literal strings
if [ "$OUTPUT" == "$Expected" ]; then

    echo "test passed"

    exit 0

else 

    echo "test failed"

    exit 1

fi