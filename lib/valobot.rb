# frozen_string_literal: true

require_relative 'app_require'

raise StandardError, 'BOT_TOKEN environment variable is missing' unless ENV.fetch('BOT_TOKEN', nil)

bot = Discordrb::Commands::CommandBot.new token: ENV.fetch('BOT_TOKEN'), prefix: '%'

Commands::COMMAND_MAPPING.each do |command, command_data|
  bot.command command.to_sym do |event, *args|
    Object.const_get(command_data[:command_class]).new(event, args).call
  end
end

bot.run
