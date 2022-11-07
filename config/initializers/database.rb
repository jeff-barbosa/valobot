# frozen_string_literal: true

require 'active_record'
require 'erb'

db_config = YAML.load(ERB.new(File.read('config/database.yml')).result, aliases: true)

ActiveRecord::Base.establish_connection(db_config[ENV.fetch('APP_ENV')])
ActiveRecord::Base.logger = ActiveSupport::Logger.new(ENV.fetch('LOG_FILE', 'log.txt'))
