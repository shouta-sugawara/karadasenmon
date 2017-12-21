class Admin::ReviewsController < Admin::BaseController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
    if @review.published?
      redirect_to review_path(@review)
    end
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.create()
    redirect_to edit_admin_review_path(review.id)
  end

  def edit
  end

  def update
    @review.update(review_params)
    if params["commit"] == "プレビューを見る"
      redirect_to admin_review_path(params[:id])
    elsif params["commit"] == "公開された記事を見る"
      redirect_to :controller => "reviews", :action => "show", id: params[:id]
    elsif request.xhr?
      render json: {
        ok: true
      }
    else
      redirect_to admin_reviews_path
    end
  end

  def destroy
    @review.destroy
    redirect_to admin_reviews_path
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
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :status, :image)
  end
end
