class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  def index
    @articles = Article.published
  end

  def show
    if @article.published?
      redirect_to article_path(@article)
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
end
