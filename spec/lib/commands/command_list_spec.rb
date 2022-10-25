# frozen_string_literal: true

require 'spec_helper'

describe Commands::CommandList do
  describe '#call' do
    let(:event) { double }

    subject { described_class.new(event).call }

    it 'returns a list of commands available' do
      result = subject

      Commands::COMMAND_MAPPING.each do |command, command_data|
        expect(result =~ /#{command.to_s}/).to be_positive
        expect(result =~ /#{command_data[:command_description]}/).to be_positive
      end
    end
  end
end
