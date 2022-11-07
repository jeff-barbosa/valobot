# frozen_string_literal: true

require 'pry'
require 'shoulda-matchers'

require_relative '../lib/app_require'

# Run the test with the english locale
I18n.locale = :en

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    # Keep as many of these lines as are necessary:
    with.library :active_record
    with.library :active_model
  end
end
