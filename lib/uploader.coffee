Twit = require "twit"
Constants = require "../private/constants"

module.exports = (body, cb) ->
  T = new Twit(Constants)
  b64 = new Buffer(body).toString("base64")
  URL = "account/update_profile_banner"
  T.post URL, banner: b64, -> cb()
