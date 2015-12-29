Canvas = require "canvas"
Image = Canvas.Image
message = require "./message"

module.exports = (number, cb) ->
  canvas = new Canvas(200, 200)
  ctx = canvas.getContext("2d")
  ctx.fillStyle = "#ffffff"
  ctx.font = "30px Helvetica"
  ctx.fillText(message(number), 10, 120)
  cb canvas.toDataURL()
