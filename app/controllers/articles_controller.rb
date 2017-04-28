class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]


  def index
    @article = Article.all
     render json: @article
  end

  def show
    render json: @article
  end

  def create
    @article = Article.new(article_params)
    if @article
      @article.save
      render json: @article, status: :created, location: @article
    else
      render json: @article.errors,  status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
  end

  def search
    if params[:search]
      search = params[:search]
      articles = Article.where('title LIKE ?', "%#{search}%")
      render json: articles, status: 'article found'
    else
      render json: articles.errors,  status: 'article  not found'
    end

  end


  private

  def set_article
    @article = Article.find(params[:id])
  end

   def article_params
     params.require(:article).permit(:title, :url, :summary, :description,:published)
   end

   def getscore

   end
end