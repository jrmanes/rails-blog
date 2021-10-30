class ArticlesController < ApplicationController
  # Return all the articles
  def index
    @articles = Article.all
  end

  # Return an specific article from their id
  def show
    @article = Article.find(params[:id])
  end

  # New item
  def new
    # @article = Article.new(article_params)
    @article = Article.new
  end

  # Creates a new article with the values title and body
  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end


  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
