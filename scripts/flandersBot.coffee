# Description:
#   Kill your productivity with quotes and gifs from Ned Flanders.
#
# Dependencies:
#   "hubot": "^2.18.0",
#   "hubot-diagnostics": "0.0.1",
#   "hubot-google-images": "^0.2.6",
#   "hubot-google-translate": "^0.2.0",
#   "hubot-help": "^0.1.3",
#   "hubot-heroku-keepalive": "^1.0.2",
#   "hubot-maps": "0.0.2",
#   "hubot-pugme": "^0.1.0",
#   "hubot-redis-brain": "0.0.3",
#   "hubot-rules": "^0.1.1",
#   "hubot-scripts": "^2.16.2",
#   "hubot-shipit": "^0.2.0",
#   "hubot-slack": "^3.4.2",
#   "request": "^2.72.0"
#
# Configuration:
#   HUBOT_SLACK_TOKEN# 
# 
#
# Commands:
# 
# 
#   
#
# Notes:
#   How to find api settings:
#   Log into slack then browse to
#   https://api.slack.com/bot-users
#
# Authors:
#   Ryan Fleming
#   Leland Scanlan
#   Julie Esris

# Require json files

triggers = require './data/triggers.json'
gifs = require './data/flandersgifs.json'
quotes = require './data/flandersquotes.json'

# api call to interact with slack members

# request = require("request")
classMembersObject = undefined

robot.http("https://slack.com/api/users.list?token=#{apiToken}")
  .get() (err, res, body) ->
  if err
   return console.log('Error:', error)
  if res.statusCode isnt 200
   return console.log('Invalid Status Code Returned:', response.statusCode)
  classMembersObject = JSON.parse(body)
  return

module.exports = (robot) ->

# -------robot.hear method

   robot.hear /hello/i, (res) ->
    res.send "Hi diddly-ho, neighborino!"

   robot.hear /thanks/i, (res) ->
     res.send "Don't forget to thank the Lord for this bountiful-- PENIS?!?!"
 
   robot.hear /ok/i, (res) ->
     res.send "Okaley Dokely!"

   robot.hear /pray/i, (res) ->
    res.send "Say your prayers, Bart Simpson...because the schools can't force you like they should!"

   robot.hear /crap/i, (res) ->
    res.send "Aw, hell, diddly-ding-dong crap!"
   
   robot.hear /I want to Tweet/i, (res) ->
    res.emote "Now let us upload the holy Tweet of the Lord!"

# -------robot.hear method using api call

   apiToken = process.env.HUBOT_SLACK_TOKEN
   randomName = undefined
   flandersQuotes = quotes

   randomName = ->
    classMembersObject.members[Math.floor(Math.random() * 30)].name

   robot.hear /flanders greet!/, (res) ->
     res.send "@" + randomName() + " " + res.random flandersQuotes


# -------robot.topic method

   robot.topic (res) ->
    res.send "#{res.message.text}? Well, I'll be darn-diddly-arned!"

# -------robot.enter and robot.leave method

   enterReplies = ["Hi diddly-ho, neighborino!", "Howdily doodily!", "Now what can I ding-dong-diddly do for you?"]
   leaveReplies = ["Doodily-doo!", "Bye-diddly-eye!", "Well, neighborinos, I guess this is goodbye... I'd better make this quick, or I'm gonna start blubbering like a baby!" ]

   robot.enter (res) ->
     res.send res.random enterReplies
   robot.leave (res) ->
     res.send res.random leaveReplies

# -------robot.respond method

   robot.respond /Is this gonna be about (.*)/i, (res) ->
    type = res.match[1]
    if type is "Jesus" | type is "jesus"
      res.reply "I'm as permissive as the next parent! I mean, just yesterday I let Todd buy some red-hots with a cartoon devil on the box!"
    else
      res.reply "Nooooo! Not #{type}!"

   flandersGifs = gifs
  
   robot.respond triggers, (res) ->
    res.send res.random flandersGifs
