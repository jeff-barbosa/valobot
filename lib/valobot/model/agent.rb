# frozen_string_literal: true

module Model
  class Agent < ActiveRecord::Base
    validates :name, :name_human_format, :agent_number, :category, presence: true

    enum category: { duelist: 0, initiator: 1, sentinel: 2, controller: 3 }

    scope :duelists, -> { where(category: :duelist) }
    scope :initiators, -> { where(category: :initiator) }
    scope :sentinels, -> { where(category: :sentinel) }
    scope :controllers, -> { where(category: :controller) }
  end
end
