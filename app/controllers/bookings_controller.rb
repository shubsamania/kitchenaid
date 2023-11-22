class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking.kitchen_id = @kitchen.id
    @booking.user = current_user
    if @booking.save
      redirect_to kitchen_booking_path(@kitchen, @booking)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    start_date = @booking.start_date
    end_date = @booking.end_date
    # Calculate the difference in days
    @days = (end_date - start_date).to_i
    @total_price = @days * @booking.kitchen.price
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
