class KitchensController < ApplicationController
  before_action :set_kitchen, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /kitchens
  def index
    @kitchens = Kitchen.all
    @booking = Booking.new
    # The `geocoded` scope filters only flats with coordinates
    # @markers = @kitchens.geocoded.map do |kitchen|
    #   {
    #     lat: kitchen.latitude,
    #     lng: kitchen.longitude
    #   }
    # end
    if params[:query].present?
    @kitchens = @kitchens.where(tag: params[:query])
    end
  end

  # GET /kitchens/1
  # changed here !
  def show
    @booking = Booking.new
    @review = Review.new
    ratings = []
    @kitchen.reviews.each do |review|
      ratings << review.rating
    end
    sum_ratings = ratings.sum
    if @kitchen.reviews.empty?
      @total_rating = sum_ratings / 1
    else
      number_of_ratings = ratings.count
      @total_rating = sum_ratings / number_of_ratings
    end
  end

  # GET /kitchens/new
  def new
    @kitchen = Kitchen.new
  end

  # GET /kitchens/1/edit
  def edit
  end

  # POST /kitchens
  def create
    @kitchen = Kitchen.new(kitchen_params)
    # save user of kitchen appliance as current user
    @kitchen.user = current_user
    if @kitchen.save! # ! stop execution @ prob
      redirect_to kitchen_path(@kitchen), notice: 'your kitchen appliance was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kitchens/1
  def update
    if @kitchen.update(kitchen_params)
      redirect_to @kitchen, notice: 'kitchen was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /kitchens/1
  def destroy
    @kitchen.destroy
    redirect_to kitchens_url, notice: 'kitchen was successfully destroyed.', status: :see_other
  end

  private

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
  end

  def kitchen_params
    params.require(:kitchen).permit(:name, :price, :start_date, :end_date, :availiability, :description, :photo)
  end
end
