# Adventure Bot!

Text adventures in Slack

- [Slack API](http://api.slack.com)
- Redis
- [Sebastian Wittenkamp's Ruby text adventure](https://github.com/bitops/text-adventure)

## Setup

- Create an incoming message hook for slack

  1. Create a channel for your adventures
![alt text][create-channel]
  2. Customize Name of your bot
![alt text][create-channel]
- Set your domain and token
- Create an outgoing message hook and point it to http://your-server:/message

## Running

```shell
bundle
bundle exec ./start.sh
```

[create-channel]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/create-channel.png "create channel"

[customize-name]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/customize-name.png "customize name"