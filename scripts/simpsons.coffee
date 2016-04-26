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
	lulz = ['lol', 'rofl', 'lmao']
	robot.hear /leeTest1/, (res) ->
  	res.send classMembersObject.members[0].profile.first_name
   robot.hear /leeTest3/, (res) ->
     res.send res.random lulz