# frozen_string_literal: true

class CreateAgent < ActiveRecord::Migration[7.0]
  def change
    create_table :agents, id: :uuid do |t|
      t.string :name, null: false
      t.string :name_human_format, null: false
      t.integer :agent_number, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
