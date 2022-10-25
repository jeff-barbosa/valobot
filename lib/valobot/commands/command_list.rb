# frozen_string_literal: true

module Commands
  class CommandList < AbstractCommand
    def call
      commands = Commands::COMMAND_MAPPING.map do |command, command_data|
        "**%#{command}**\n*#{command_data[:command_description]}*\n\n"
      end.join

      "Olá amiguinho, aqui está a listinha de comandinhos:\n\n#{commands}"
    end
  end
end
