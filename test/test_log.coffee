debug = require('debug')("app:test")
log = require('../lib/log')(debug)

console.log debug

debug.error("123")