triggers = require './data/triggers.json'
gifs = require './data/flandersgifs.json'

request = require("request")
classMembersObject = undefined
request 'https://slack.com/api/users.list?token=xoxb-36596712790-23K5to1RQ7zRE7x0017fd368', (error, response, body) ->
  if error
    return console.log('Error:', error)
  if response.statusCode != 200
    return console.log('Invalid Status Code Returned:', response.statusCode)
  classMembersObject = JSON.parse(body)
  return

module.exports = (robot) ->

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

# -------

   robot.topic (res) ->
    res.send "#{res.message.text}? Well, I'll be darn-diddly-arned!"

# -------

   enterReplies = ["Hi diddly-ho, neighborino!", "Howdily doodily!", "Now what can I ding-dong-diddly do for you?"]
   leaveReplies = ["Doodily-doo!", "Bye-diddly-eye!", "Well, neighborinos, I guess this is goodbye... I'd better make this quick, or I'm gonna start blubbering like a baby!" ]

   robot.enter (res) ->
     res.send res.random enterReplies
   robot.leave (res) ->
     res.send res.random leaveReplies

# -------

   robot.respond /Is this gonna be about (.*)/i, (res) ->
    type = res.match[1]
    if type is "Jesus" | type is "jesus"
      res.reply "I'm as permissive as the next parent! I mean, just yesterday I let Todd buy some red-hots with a cartoon devil on the box!"
    else
      res.reply "Nooooo! Not #{type}!"

   flandersGifs = gifs
  
   robot.respond triggers, (res) ->
    res.send res.random flandersGifs

# -------

    robot.hear /flanders greet!/, (res) ->
      res.send "@" + classMembersObject.members[Math.floor(Math.random() * 30)].name + ", I show you pity, and how do you repay me? With a kick in the kididdlehopper!"