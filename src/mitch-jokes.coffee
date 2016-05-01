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

#Path = require 'path'
#Fs = require 'fs'
file = require '../data/mitchjokes.json'

# buffer = Fs.readFileSync(Path.resolve('./data', 'mitchjokes.json'))
#jokes = JSON.parse file

module.exports = (robot) ->
  robot.respond /tell me a mitch joke$/, (msg) ->
    joke = msg.random file.jokesArray
    console.log file
    msg.send joke.joke
