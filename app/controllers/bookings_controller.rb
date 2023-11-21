class BookingsController < ApplicationController
  before_action :set_booking, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking.kitchen_id = @kitchen.id
    if @booking.save
      redirect_to kitchen_path(@kitchen)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:content, :rating)
  end
end
