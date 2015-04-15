debug = require('debug')("app:test")
log = require('debug')('app:log')
require('../lib/log')(debug)
require('../lib/log')(log)



#console.log debug

debug.error("123")
debug.error("youqing")
#debug "hihihi"

log.error "log error"