class KitchensController < ApplicationController
  before_action :set_kitchen, only: %i[show edit update destroy]
  skip_before_action :authenticate_user! #, only: [:index, :show, :new]

  # GET /kitchens
  def index
    @kitchens = Kitchen.all
  end

  # GET /kitchens/1
  def show
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

    if @kitchen.save
      redirect_to @kitchen, notice: 'kitchen was successfully created.'
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
    params.require(:kitchen).permit(:name, :price, :availiability)
  end
end
