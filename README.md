# Adventure Bot!

Text adventures in Slack

- [Slack API](http://api.slack.com)
- Redis
- [Sebastian Wittenkamp's Ruby text adventure](https://github.com/bitops/text-adventure)

## Setup

### Create an incoming message hook for slack

1. Create a channel for your adventures
![alt text][create-channel]
2. Customize Name of your bot
![alt text][customize-name]
3. Expand the setup card
![alt text][expand-setup]
4. Save the hash after the last `/` in the Webhook URL, it is your Slack Token
![alt text][token]

### Create an outgoing message hook and point it to http://your-server:/message

### Set your domain and token

## Running

### make you have ruby installed, then run the following commands

```shell
gem install bundler
bundle
bundle exec ./start.sh
```

[create-channel]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/create-channel.png "create channel"

[customize-name]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/customize-name.png "customize name"

[expand-setup]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/expand-setup.png "expand setup"

[token]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/get-token.png "token"