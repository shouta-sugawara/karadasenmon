class Niconico::ReviewsController < Niconico::BaseController
  before_action :set_review, only: [:show]

  def index
    @reviews = Review.published.order(created_at: :desc).paginate(page: params[:page], per_page: 18)
  end

  def show
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end
end
