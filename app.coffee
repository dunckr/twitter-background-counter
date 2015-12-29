express = require "express"
generator = require "./lib/generator"
uploader = require "./lib/uploader"

PORT = 3000

app = express()
app.set("port", process.env.PORT ? PORT)
app.listen(app.get("port"))

app.get "/", (req, res) ->
  generator (img) ->
    res.send '<img src="' + img + '" />'
    #console.log imgUrl
    ##request { url: imgUrl, encoding: null}, (err, r, body) ->
    uploader img, ->
      console.log "uploaded"
      res.redirect "https://twitter.com/dunckr"
