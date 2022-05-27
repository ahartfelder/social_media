# frozen_string_literal: true

# Database for category
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
