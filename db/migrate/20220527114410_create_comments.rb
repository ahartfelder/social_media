# frozen_string_literal: true

# Database for Comments
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :message, null: false
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end