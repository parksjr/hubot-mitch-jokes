Helper = require('hubot-test-helper')
expect = require('chai').expect
helper = new Helper('../src/mitch-jokes.coffee')

class MockResponse extends Helper.Response
  random: (items) ->
    { joke: 'I used to do drugs. I still do, but I used to, too.' }

describe 'mitch-jokes', ->
  room = null
  beforeEach ->
    room = helper.createRoom({httpd: false, 'response': MockResponse})
  
  context 'user wants hubot to tell a mitch joke', ->
    beforeEach ->
      room.user.say 'bob', 'hubot tell me a mitch joke'
    
    it 'should respond with a mitch hedberg joke', ->
      console.log room.messages
      expect(room.messages).to.eql [
        ['bob', 'hubot tell me a mitch joke']
        ['hubot', 'I used to do drugs. I still do, but I used to, too.']
      ]