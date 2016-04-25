module.exports = (robot) ->

   flandersGifs = ['http://gph.is/YBgxHX', 'http://gph.is/1ijaRxd', 'http://gph.is/12MnMC3']
  
   robot.respond /stupid sexy flanders/i, (res) ->
    res.send res.random flandersGifs

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

   robot.respond /Is this gonna be about (.*)/i, (res) ->
    type = res.match[1]
    if type is "Jesus" | "jesus"
      res.reply "I'm as permissive as the next parent! I mean, just yesterday I let Todd buy some red-hots with a cartoon devil on the box!"
    else
      res.reply "Nooooo! Not #{type}!"
   
   robot.hear /I want to Tweet/i, (res) ->
    res.emote "Now let us upload the holy Tweet of the Lord!"

   robot.topic (res) ->
    res.send "#{res.message.text}? Well, I'll be darn-diddly-arned!"

   enterReplies = ["Hi diddly-ho, neighborino!", "Howdily doodily!", "Now what can I ding-dong-diddly do for you?"]
   leaveReplies = ["Doodily-doo!", "Bye-diddly-eye!", "Well, neighborinos, I guess this is goodbye... I'd better make this quick, or I'm gonna start blubbering like a baby!" ]

   robot.enter (res) ->
     res.send res.random enterReplies
   robot.leave (res) ->
     res.send res.random leaveReplies   	 	