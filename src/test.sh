#!/bin/bash

Expected="hello test"

OUTPUT=$(node -e "console.log(require('./src/app') ('test'))")

if ["OUTPUT" == "Expected"]; then

echo "test passed"

exit 0;

else 

echo "test failed"

exit 1

fi
