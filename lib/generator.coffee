#request = require "request"
#cheerio = require "cheerio"

#URL = "http://colorfulgradients.tumblr.com/random"

#module.exports = (cb) ->
#request URL, (err, res, html) ->
#$ = cheerio.load(html)
#$(".photo-wrapper img").each ->
#imgUrl = $(this).attr("src")
#cb(imgUrl)

Canvas = require('canvas')
Image = Canvas.Image

module.exports = (cb) ->
  console.log "we are here again!"
  canvas = new Canvas(200, 200)
  ctx = canvas.getContext('2d')

  ctx.font = '30px Impact'
  ctx.rotate(.1)
  ctx.fillText("Awesome!", 50, 100)

  te = ctx.measureText('Awesome!')
  ctx.strokeStyle = 'rgba(0,0,0,0.5)'
  ctx.beginPath()
  ctx.lineTo(50, 102)
  ctx.lineTo(50 + te.width, 102)
  ctx.stroke()
  cb canvas.toDataURL()
