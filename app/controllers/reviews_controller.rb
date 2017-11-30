class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def index
    @reviews = Review.published
  end

  def show
    if @review.published?
      redirect_to review_path(@review)
    end
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end
end
