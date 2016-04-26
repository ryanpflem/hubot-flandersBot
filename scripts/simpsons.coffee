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
	# flandersQuotes = ["I've done everything the Bible says — even the stuff that contradicts the other stuff!", "I'm not thinking straight; why did I have that wine cooler last month?", "Aw, hell, diddly-ding-dong crap!", "Hey, Homie! I can see your doodle!", "We're done for, we're done-diddly done for, we're done-diddly-doodily, done diddly-doodily, done diddly-doodly, done diddly-doodily!", "I don't need to be told what to think-- by anyone living."]
	# robot.respond /random quote/i, (res) ->
    # res.send res.random flandersQuotes

  robot.hear /leeTest/, (res) ->
  	res.send res.random classMembersObject.members