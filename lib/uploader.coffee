Twit = require "twit"
Constants = require "./constants"
URL = "account/update_profile_banner"

module.exports = (data, cb) ->
  b64 = data.replace "data:image/png;base64,", ""
  T = new Twit(Constants)
  T.post URL, banner: b64, -> cb()
