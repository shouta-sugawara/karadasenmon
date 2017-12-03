class Admin::BlogsController < Admin::BaseController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show
    if @blog.published?
      redirect_to blog_path(@blog)
    end
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.create()
    redirect_to edit_admin_blog_path(blog.id)
  end

  def edit
  end

  def update
    @blog.update(blog_params)
    if params["commit"] == "プレビューを見る"
      redirect_to admin_blog_path(params[:id])
    elsif params["commit"] == "公開された記事を見る"
      redirect_to :controller => "blogs", :action => "show", id: params[:id]
    elsif request.xhr?
      render json: {
        ok: true
      }
    else
      redirect_to admin_blogs_path
    end
  end

  def destroy
    @blog.destroy
    redirect_to admin_blogs_path
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :status, :image)
  end
end
