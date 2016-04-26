# flandersBot

![Ned Flanders gif](https://media.giphy.com/media/3xbVDsQr6OrBK/giphy.gif hello)

He will keep you laughing and distracted as you chat on [Slack][slack].

**flandersBot** is a [Hubot][hubot] script and was developed for the [hubot-slack][hubot-slack] adapter.

He was initially generated by [generator-hubot][generator-hubot] and configured to be deployed on [Heroku][heroku].


### Installation

If you already have [hubot][hubot] with the [hubot-slack][hubot-slack] adapter installed you can copy the `scripts` directory and configure.  

We will publish to [npm hubot-scripts][npm hubot-scripts] in the near future so it can be installed via CLI like so: `npm install hubot-flandersBot`


### Configuration

`HUBOT_SLACK_TOKEN` _[required]_ - API Token generated by [Slack][slack-api]

If you are running hubot from [Heroku][heroku] the `HUBOT_SLACK_TOKEN` should be configured like so:

`$ heroku config:add HUBOT_SLACK_TOKEN=YourTokenGoesHere`


### Dependencies

    hubot: ^2.18.0
    hubot-help: ^0.1.3
    hubot-heroku-keepalive: ^1.0.2 //only if you want to schedule the dynos
    hubot-redis-brain: 0.0.3
    hubot-scripts: ^2.16.2
    hubot-slack: ^3.4.2


### Commands

#### .hear

**flandersBot** can hear you say:

    - hello
    - thanks
    - ok
    - pray
    - crap
    - I want to Tweet

and he will respond with with some neighborly advice.

You can also ask him to send a random member in your [users.list][slack-api-users.list] a quote by typing `flanders greet!`

#### .respond

You can also call **flandersBot** directly like so `@flanderBot: Is this gonna be about (.*)` where `(.*)` is any word you'd like.  [Hint: Jesus and Satan are classic]

#### .topic & .enter/.leave

**flandersBot** will respond if you change _topics_ in a channel or _enter/leave_ a channel in Slack.

When talking to **flandersBot** there are several trigger words that will generate a giphy for you to enjoy!

    - gif me
    - pray
    - ding
    - dong
    - simpson
    - satan
    - neighbor
    - bible
    - hiddy
    - howdy
    - diddly
    - good lord
    - aw hell
    - okaley
    - dokely 
    - ned
    - flander
    - neighbor 
    - bye


## Adapters

**flandersBot** is a [Hubot][hubot] script and was developed for the [hubot-slack][hubot-slack] adapter.

Adapters are the interface to the service you want your hubot to run on such as Campfire or IRC. There are a number of third party adapters that the community have contributed. Check [Hubot Adapters][hubot-adapters] for the available ones.

[hubot-adapters]: https://github.com/github/hubot/blob/master/docs/adapters.md


## Restart the bot

You may want to get comfortable with `heroku logs` and `heroku restart` if
you're having issues.



[heroku]: http://www.heroku.com
[hubot]: http://hubot.github.com
[generator-hubot]: https://github.com/github/generator-hubot
[hubot-slack]: https://github.com/slackhq/hubot-slack
[slack]: https://get.slack.help/hc/en-us
[slack-api]: https://api.slack.com/
[slack-api-users.list]: https://api.slack.com/methods/users.list
[npm hubot-scripts]: https://www.npmjs.com/browse/keyword/hubot-scripts