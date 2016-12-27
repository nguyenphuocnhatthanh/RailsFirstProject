class Frontend::ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create

    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all()
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :images)
    end

end
