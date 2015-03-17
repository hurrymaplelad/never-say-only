#!/bin/bash

set -e

# Vanilla should pass
mocha

# Enabling with any json truthy value should fail the test
! NEVER_SAY_ONLY=true mocha test/it_only.test.js
! NEVER_SAY_ONLY=1 mocha test/describe_only.test.js

# Disabling with any json falsy value should pass
NEVER_SAY_ONLY=false mocha test/it_only.test.js
NEVER_SAY_ONLY=0 mocha test/describe_only.test.js
