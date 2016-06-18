class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(publish_date: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end
end
