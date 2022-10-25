# frozen_string_literal: true

module Commands
  class AbstractCommand
    attr_reader :event, :args

    def initialize(event, *args)
      @event = event
      @args = args.flatten
    end

    def call
      raise StandardError, 'A command must implement `call`'
    end
  end
end
