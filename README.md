never-say-only
==============

```coffee
describe.only 'never-say-only', ->
  it.only 'throws', ->
    if you.set process.env.NEVER_SAY_ONLY, jsonTruthyValue
```

A hack job of [this rejected mocha PR](https://github.com/mochajs/mocha/pull/1412).

[![NPM version](http://img.shields.io/npm/v/never-say-only.svg?style=flat-square)](https://www.npmjs.org/package/never-say-only)
[![Build Status](http://img.shields.io/travis/hurrymaplelad/never-say-only/master.svg?style=flat-square)](https://travis-ci.org/hurrymaplelad/never-say-only)

Usage
-----

From any test file:
```js
require('never-say-only')

describe(...
```

Then run your suite with a truthy `NEVER_SAY_ONLY` environment:
```sh
$ NEVER_SAY_ONLY=true mocha
```

See .travis.yml for an example travis configuration.
