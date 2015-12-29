express = require "express"
generator = require "./lib/generator"
uploader = require "./lib/uploader"

PORT = 3000
COUNTER = 15
TWITTER_URL = "https://twitter.com/dunckr"

app = express()
app.set("port", process.env.PORT ? PORT)

app.listen(app.get("port"))

app.get "/", (req, res) ->
  generator COUNTER, (img) ->
    uploader img, ->
      COUNTER++
      res.redirect TWITTER_URL
