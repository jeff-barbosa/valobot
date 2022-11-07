# frozen_string_literal: true

module Commands
  COMMAND_MAPPING = {
    I18n.t('commands.commands_command.name') => {
      command_class: 'Commands::CommandList',
      command_description: I18n.t('commands.commands_command.description')
    },
    I18n.t('commands.choose_my_agent_command.name') => {
      command_class: 'Commands::ChooseMyAgent',
      command_description: I18n.t('commands.choose_my_agent_command.description')
    }
  }.transform_keys(&:to_sym).freeze
end
