# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = articles(:art1)
  end

  test 'title should be present' do
    @article.title = ' '
    assert_not @article.valid?
  end

  test 'body should be present' do
    @article.body = ' '
    assert_not @article.valid?
  end

  test 'body should not be too short' do
    @article.body = 'a' * 4
    assert_not @article.valid?
  end

  test 'body should not be too long' do
    @article.body = 'a' * 301
    assert_not @article.valid?
  end
end
