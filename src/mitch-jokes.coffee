# Description
#   A hubot script for mitch hedberg jokes
#
# Configuration:
#   none
#
# Commands:
#   hubot tell me a mitch joke
#
# Notes:
#   none
#
# Author:
#   Michael Parks <mike@parksjr.tech>

Path = require 'path'
Fs = require 'fs'

buffer = Fs.readFileSync(Path.resolve('./data', 'mitchjokes.json'))
jokes = JSON.parse buffer

module.exports = (robot) ->
  robot.respond /tell me a mitch joke$/, (msg) ->
    joke = msg.random jokes
    msg.send joke.joke
