class ArticlesController < ApplicationController
  def new
    # if user_signed_in?
    @article = Article.new 
    # end
    # unless user_signed_in?
    # redirect_to  new_user_session_path  
    # end

  end

  def index
    @articles = Article.all.order(" created_at desc").page(params[:page]).per(3)
  end

  def create
    @article = current_user.articles.new(article_params)

    if  @article.save
      redirect_to @article
    else
      render 'new'
    end
    # render plain: params[:article].inspect
  end

  def show
    @article = Article.find(params[:id])

  end

  def edit
    @article = Article.find(params[:id])

  end
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article 
    else 
      render 'edit'
    end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to  articles_path

  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :avatar, :avatar_cache)
  end
end
