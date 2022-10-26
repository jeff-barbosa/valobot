# frozen_string_literal: true

module Commands
  class CommandList < AbstractCommand
    def call
      commands = Commands::COMMAND_MAPPING.map do |command, command_data|
        "**%#{command}**\n*#{command_data[:command_description]}*\n\n"
      end.join

      I18n.t('commands.commands_command.class.call.message', commands: commands)
    end
  end
end
