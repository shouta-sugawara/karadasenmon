class BlogsController < ApplicationController
  before_action :set_blog, only: [:show]

  def index
    @blogs = Blog.published.order(updated_at: :desc).paginate(page: params[:page], per_page: 3)
  end

  def show
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
