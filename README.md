# Valobot

A simple Discord bot written in Ruby


# Installation

## With Docker

- Clone this repository to your machine (eg.: `git clone git@github.com:jeff-barbosa/valobot.git`)

- Rename `.env.sample` to `.env` and edit the value for the BOT_TOKEN to your own Discord bot token

- From the project's root directory you can build and run it with `docker build -t valobot . && docker run valobot`

## Without Docker

- Clone this repository to your machine (eg.: `git clone git@github.com:jeff-barbosa/valobot.git`)

- Rename `.env.sample` to `.env` and edit the value for the BOT_TOKEN to your own Discord bot token

- Make sure you have Ruby 3.1.2 installed (you can install with Rbenv)

- Make sure to have Bundler gem installed

- Run `bundler install` to set up the gems

- Run `env $(cat .env) ruby run_bot.rb` to run the bot
