class ArticlesController < ApplicationController

  def index

	  @articles = Article.order(:title).all
	  rescue exc
      logger.error("No Articles! #{exc.message}")
      flash[:notice] = "There were no articles!"

  end

  def show
    @article = Article.find(params[:id])
    @articles= Article.includes(:contents).order(:title).all
  end

  def new
	  @article = Article.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def create
	  @article = Article.new(article_params)

	  if @article.save
	    redirect_to @article
	  else
	    render 'new'
	  end
  end

  def edit
	  begin
		  @article = Article.find(params[:id])
	  rescue Exception => exc
      logger.error("No Articles! #{exc.message}")
      flash[:notice] = "There were no articles!"
	  end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
