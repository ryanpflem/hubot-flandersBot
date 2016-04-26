jargon = require './data/triggers.json'


module.exports = (robot) ->

   robot.hear /Hello/i, (res) ->
    res.send "Hi diddly-ho, neighborino!"

   robot.hear /Thanks/i, (res) ->
     res.send "Don't forget to thank the Lord for this bountiful-- PENIS?!?!"
 
   robot.hear /OK/i, (res) ->
     res.send "Okily dokily!"

   robot.hear /Pray/i, (res) ->
    res.send "Say your prayers, Bart Simpson... because the schools can't force you like they should!"

   robot.hear /Crap/i, (res) ->
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

   flandersGifs = ['http://gph.is/YBgxHX', 'http://gph.is/1ijaRxd', 'http://gph.is/12MnMC3', 'http://gph.is/15OcIJv', 'http://gph.is/1ywe9q9', 'http://gph.is/1rm28Rb', 'http://gph.is/Vx8XQ3', 'http://gph.is/11lTOAp', 'http://gph.is/12tlkmg', 'http://gph.is/11lTKkm', 'http://gph.is/11lTGRy', 'http://gph.is/Vwuybi', 'http://gph.is/Vx9lOs', 'http://gph.is/12MCr02', 'http://gph.is/XLNaqd', 'http://gph.is/12MSPxn', 'http://gph.is/148VEGD', 'http://gph.is/1niVmZD', 'http://gph.is/14KtN6U', 'http://gph.is/YBgdcv', 'http://gph.is/145lvxw', 'http://gph.is/1uEliRl', 'http://gph.is/1uYhxEm', 'http://gph.is/1JT1NOA', 'http://gph.is/XJmk1R', 'http://gph.is/1esFQdS', 'http://gph.is/1rm1Xp5', 'http://gph.is/1s5WG5I' ]
  
   robot.respond jargon, (res) ->
    res.send res.random flandersGifs