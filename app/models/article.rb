# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories

  validates :title, presence: true
  validates :body, presence: true, length: { in: 5..300 }
end
