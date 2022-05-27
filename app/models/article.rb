# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { in: 5..300 }
end
