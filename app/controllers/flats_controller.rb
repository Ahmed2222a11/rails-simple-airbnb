class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
    # @flat = flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
    redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @flat = flat.find(params[:id])
  end

  def update
    # @flat = flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy
    # @flat = flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
