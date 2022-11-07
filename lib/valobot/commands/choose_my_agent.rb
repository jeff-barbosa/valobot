# frozen_string_literal: true

module Commands
  class ChooseMyAgent < AbstractCommand
    def call
      agent_class = @args[0]

      return chosen_agent_generic(Model::Agent.all.sample) unless agent_class.present?

      case agent_class
      when I18n.t('commands.choose_my_agent_command.class.call.duelist')
        chosen_agent_class(Model::Agent.duelists.sample, agent_class)
      when I18n.t('commands.choose_my_agent_command.class.call.initiator')
        chosen_agent_class(Model::Agent.initiators.sample, agent_class)
      when I18n.t('commands.choose_my_agent_command.class.call.controller')
        chosen_agent_class(Model::Agent.controllers.sample, agent_class)
      when I18n.t('commands.choose_my_agent_command.class.call.sentinel')
        chosen_agent_class(Model::Agent.sentinels.sample, agent_class)
      else
        I18n.t('commands.choose_my_agent_command.class.call.invalid_class', class: agent_class)
      end
    end

    private

    def chosen_agent_generic(agent)
      I18n.t('commands.choose_my_agent_command.class.call.agent_chosen', agent: agent.name_human_format)
    end

    def chosen_agent_class(agent, agent_class)
      I18n.t('commands.choose_my_agent_command.class.call.agent_chosen_class',
             agent: agent.name_human_format, class: agent_class)
    end
  end
end
