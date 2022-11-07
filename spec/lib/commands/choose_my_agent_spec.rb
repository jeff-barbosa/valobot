# frozen_string_literal: true

require 'spec_helper'

describe Commands::ChooseMyAgent do
  describe '#call' do
    let(:event) { double }
    let(:args) { [] }

    subject { described_class.new(event, args).call }

    context 'when no argument is given' do
      before do
        allow(Model::Agent).to receive(:all).and_call_original
      end

      it 'chooses a random agent from the pool' do
        result = subject

        expect(Model::Agent).to have_received(:all).once
        expect(result =~ /I have chosen the agent/).not_to be_nil
      end
    end

    context 'when an argument is given' do
      %w[duelist initiator controller sentinel].each do |agent_class|
        context "when the argument is the valid agent class #{agent_class}" do
          let(:args) { [agent_class] }
          let(:model_scope) { "#{agent_class}s".to_sym }

          before do
            allow(Model::Agent).to receive(model_scope).and_call_original
          end

          it 'returns an agent from the given class' do
            result = subject

            expect(Model::Agent).to have_received(model_scope).once
            expect(result =~ /I have chosen the #{agent_class}/).not_to be_nil
          end
        end
      end

      context 'when the argument is not a valid agent class' do
        let(:args) { ['foobar'] }

        it 'returns a message stating the invalid agent class' do
          expect(subject).to eq(I18n.t('commands.choose_my_agent_command.class.call.invalid_class', class: 'foobar'))
        end
      end
    end
  end
end
