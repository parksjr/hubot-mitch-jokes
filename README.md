# hubot-mitch-jokes
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/5466f400351043a8a0b76abe22452092)](https://www.codacy.com/app/mike_10/hubot-mitch-jokes?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=parksjr/hubot-mitch-jokes&amp;utm_campaign=Badge_Grade)

A hubot script for mitch hedberg jokes

See [`src/mitch-jokes.coffee`](src/mitch-jokes.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-mitch-jokes --save`

Then add **hubot-mitch-jokes** to your `external-scripts.json`:

```json
["hubot-mitch-jokes"]
```

## Sample Interaction

```
user1>> hubot tell me a mitch joke
hubot>> I used to do drugs. I still do, but I used to, too.
```

## Contribution

Feel free to fork and contribute, even if its adding more mitch jokes. See below.

## Mitch joke missing?

I have added a base set of mitch jokes that I like already, see [`data/mitchjokes.json`](data/mitchjokes.json) for the complete list. If I am missing any that you like, fork it, add it, and pull request it!