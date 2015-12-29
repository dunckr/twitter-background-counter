module.exports = (number) ->
  MAX_LENGTH = 10
  length = MAX_LENGTH - "#{number}".length
  leading = Array(length).join("0")
  "#{leading}#{number}"
