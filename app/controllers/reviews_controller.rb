class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = review.new(review_params)
    @review.save

    redirect_to restaurant_path(@review)
  end

  private

  def review_params
    params.require(:restaurant).permit(:content, :rating)
  end


end
