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

file = require '../data/mitchjokes.json'

module.exports = (robot) ->
  robot.respond /tell me a mitch joke$/, (msg) ->
    joke = msg.random file.jokesArray
    msg.send joke.joke
