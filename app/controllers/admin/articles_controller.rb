class Admin::ArticlesController < Admin::BaseController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    if @article.published?
      redirect_to article_path(@article)
    end
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create()
    redirect_to edit_admin_article_path(article.id)
  end

  def edit
  end

  def update
    @article.update(article_params)
    if params["commit"] == "プレビューを見る"
      redirect_to admin_article_path(params[:id])
    elsif params["commit"] == "公開された記事を見る"
      redirect_to :controller => "articles", :action => "show", id: params[:id]
    elsif request.xhr?
      render json: {
        ok: true
      }
    else
      redirect_to admin_articles_path
    end
  end

  def destroy
    @article.destroy
    redirect_to admin_articles_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :status)
  end
end
