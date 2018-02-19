class Admin::BlogsController < Admin::BaseController
  skip_before_filter :verify_authenticity_token
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all.order(created_at: :desc).paginate(page: params[:page], per_page: 20)
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

  def upload_image
    if params[:file]
      FileUtils::mkdir_p(Rails.root.join("public/uploads/froala"))
      ext = File.extname(params[:file].original_filename)
      if IMAGE_EXT.include?(ext)
        file_name = "#{SecureRandom.urlsafe_base64}#{ext}"
        path = Rails.root.join("public/uploads/froala/", file_name)
        File.open(path, "wb") {|f| f.write(params[:file].read)}
        view_file = Rails.env.production? ? DOMAIN + "uploads/froala/" + file_name : "http://localhost:3000/" + "uploads/froala/" + file_name
        render :json => {:link => view_file}.to_json
      else
        render :text => {:link => nil}.to_json
      end
    else
      render :text => {:link => nil}.to_json
    end
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :status, :store_type, :image)
  end
end
