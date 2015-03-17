#!/bin/bash

set -e

# Vanilla should pass
echo "vanilla should pass -  started"
mocha
echo "vanilla should pass - ended"

# Enabling with any json truthy value should fail the test
echo "NEVER_SAY_ONLY=truthy - started"
! NEVER_SAY_ONLY=true mocha test/it_only.test.js
! NEVER_SAY_ONLY=1 mocha test/describe_only.test.js
echo "NEVER_SAY_ONLY=truthy - ended"

# Disabling with any json falsy value should pass
echo "NEVER_SAY_ONLY=falsy - started"
NEVER_SAY_ONLY=false mocha test/it_only.test.js
NEVER_SAY_ONLY=0 mocha test/describe_only.test.js
echo "NEVER_SAY_ONLY=falsy - ended"

# should throw if required outside a mocha context
echo "fail without mocha - started"
! node test/fails_without_mocha_env.test.js
echo "fail without mocha - ended"

echo
echo "TESTS PASSES - above failure messages are anticipated"
