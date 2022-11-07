# frozen_string_literal: true

require_relative 'config/seed'

task :environment do
  RAKE_PATH = File.expand_path('.')
  RAKE_ENV  = ENV.fetch('APP_ENV', 'development')
  ENV['RAILS_ENV'] = RAKE_ENV

  Bundler.require :default

  ActiveRecord::Tasks::DatabaseTasks.database_configuration = YAML.load(ERB.new(File.read('config/database.yml')).result, aliases: true)
  ActiveRecord::Tasks::DatabaseTasks.root             = RAKE_PATH
  ActiveRecord::Tasks::DatabaseTasks.env              = RAKE_ENV
  ActiveRecord::Tasks::DatabaseTasks.db_dir           = 'config'
  ActiveRecord::Tasks::DatabaseTasks.migrations_paths = ['config/migrations']
  ActiveRecord::Tasks::DatabaseTasks.seed_loader      = SeedLoader.new
end

load 'active_record/railties/databases.rake'
