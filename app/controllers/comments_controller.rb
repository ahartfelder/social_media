# frozen_string_literal: true

# Controls for comments
class CommentsController < ApplicationController
  before_action :set_article

  def create
    if @article.comments.create(comment_params).valid?
      redirect_to @article, notice: 'Comment was successfully posted.'
    else
      redirect_to @article, alert: 'Comment invalid.'
    end
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article, notice: 'Comment was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:message)
  end
end
