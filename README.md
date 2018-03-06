# meyasu-box
## Description
This is a slack app that provide meyasu-box(meyasu-bako) to your slack team.
Meyasu-box is well known for system to posting idea witout name in Japan.
If you favorite this app, you can deploy this app with fllowing button.

[![Deploy Meyasu-box](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/onunu/meyasu-box)

## Usage
1. Deploy this app to some host(e.g. heroku, it is easiest).-
2. Creating slack app.
  - Define the slash command to post idea.
    - Enter `Request URL` with the host installed this app.
  - Select the channel.
    - Confirm `Webhook url`
3. Enter `POST_CHANNEL_URL`, environment variable to post ideas to the channel.
