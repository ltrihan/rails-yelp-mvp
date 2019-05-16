class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:restaurant_id])
    @review.save

    redirect_to restaurant_id_path
  end
end
