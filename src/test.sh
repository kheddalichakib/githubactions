#!/bin/bash

Expected="hello test"

OUTPUT=$(node -e "import('./src/app.js').then(m => console.log(m.default('test')))")

if [ "$OUTPUT" == "$Expected" ]; then
    echo "test passed"
    exit 0
else 
    echo "test failed"
    exit 1
fi