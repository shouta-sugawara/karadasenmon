class Niconico::BlogsController < Niconico::BaseController
  before_action :set_blog, only: [:show]

  def index
    @blogs = Blog.published.order(created_at: :desc).paginate(page: params[:page], per_page: 18)
  end

  def show
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
