module.exports = (robot) ->

  flandersGifs = '/giphy ned flanders'

  robot.respond /stupid sexy flanders/i, (res) ->
    res.send res.random flandersGifs