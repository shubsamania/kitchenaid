class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking_id = @booking.id
    if @review.save!
      redirect_to kitchen_path(@booking.kitchen_id, @booking.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
