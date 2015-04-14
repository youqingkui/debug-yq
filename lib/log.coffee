fs = require('fs')
email = require('./email')()
errorLog = fs.createWriteStream '../logs/error.log',
  flags: 'a'

module.exports = (debug) ->
  debug.error = (body='') ->
    debug.color = 1

    debug(body)

    body = String(body)
    write =
      time: new Date()
      errInfo: body

    body = JSON.stringify(write)
    errorLog.write body + '\n'

#    email.send(body)



