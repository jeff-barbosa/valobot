# frozen_string_literal: true

require 'discordrb'
require 'i18n'

require_relative '../config/initializers/database'
require_relative '../config/initializers/i18n'

require_relative 'valobot/commands'
require_relative 'valobot/commands/abstract_command'
require_relative 'valobot/commands/command_list'
require_relative 'valobot/commands/choose_my_agent'

require_relative 'valobot/model/agent'
