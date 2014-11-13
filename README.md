# Adventure Bot!

Text adventures in Slack uses:

- [Slack API](http://api.slack.com)
- Redis
- [Sebastian Wittenkamp's Ruby text adventure](https://github.com/bitops/text-adventure)

## Setup

#### Create an Incoming WebHook in Slack

1. Sign into [Slack Services](slack.com/services)
2. Create a channel for your adventures
![alt text][create-channel]
3. Customize Name of your bot
![alt text][customize-name]
4. Expand the setup card
![alt text][expand-setup]
5. Save the hash after the last `/` in the Webhook URL, it is your Slack Token
![alt text][token]
6. Save Settings

#### Create an Outgoing WebHook in Slack

2. Select the channel you created to listen on
![alt text][listen-channel]
3. Set the URL for your message server
![alt text][server-url]
3. Customize Name of your bot
![alt text][customize-name]
4. Save Settings

#### Set your domain and token

1. Clone this repo onto your server
2. Inside **sender.rb** change the `url` variable to your domain and Slack Token
```ruby
url = 'https://yourdomain.slack.com/services/hooks/incoming-webhook?token=<yourtoken>'
```
3. Save file

## Running

#### make sure you have ruby installed, then run the following commands

```shell
gem install bundler
bundle
bundle exec ./start.sh
```
###### you may want to run `bundle exec ./start.sh` with a daemon or as a detached screen

## Start typing inside your new channel

[create-channel]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/create-channel.png "create channel"

[customize-name]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/customize-name.png "customize name"

[expand-setup]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/expand-setup.png "expand setup"

[token]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/get-token.png "token"

[server-url]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/server-url.png "token"

[listen-channel]: https://raw.githubusercontent.com/Jupitar/adventure-bot/master/docs/listen-channel.png "listen channel"