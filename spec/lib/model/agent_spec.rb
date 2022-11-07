# frozen_string_literal: true

require 'spec_helper'

describe Model::Agent, type: :model do
  context 'activerecord specifications' do
    it { should have_db_column(:id) }
    it { should have_db_column(:name) }
    it { should have_db_column(:name_human_format) }
    it { should have_db_column(:agent_number) }
    it { should have_db_column(:category) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

  context 'activerecord validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:name_human_format) }
    it { should validate_presence_of(:agent_number) }
    it { should validate_presence_of(:category) }
  end
end
