FROM ruby:3.1.2

WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundler
COPY . .
CMD env $(cat .env) ruby run_bot.rb
