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

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :status, :image)
  end
end
