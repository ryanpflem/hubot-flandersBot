module.exports = (robot) ->

  stupidsexyflanders = ['http://gph.is/1ijaRxd']

  robot.respond /stupid sexy flanders/i, (res) ->
    res.send res.random stupidsexyflanders