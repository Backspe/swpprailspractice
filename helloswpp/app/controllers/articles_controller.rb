class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
# Initialize new model with filtered parameter.
    @article.save

    redirect_to @article

#    render plain: params[:article].inspect
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
