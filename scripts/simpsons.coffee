request = require("request")
classMembersObject = undefined
request 'https://slack.com/api/users.list?token=xoxb-36596712790-23K5to1RQ7zRE7x0017fd368', (error, response, body) ->
  if error
    return console.log('Error:', error)
  if response.statusCode != 200
    return console.log('Invalid Status Code Returned:', response.statusCode)
  classMembersObject = JSON.parse(body)
  return
randomName = undefined
randomName = ->
	classMembersObject.members[Math.floor(Math.random() * 30)].name
module.exports = (robot) ->
  robot.hear /leeTest/, (res) ->
  	res.send "@" + randomName() + " Hi neighbor!"