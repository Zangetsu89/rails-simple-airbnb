class FlatsController < ApplicationController
  
  def index
    raise
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(strong_flat_params)
    if @flat.save
      redirect_to flat_path
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    raise
    @flat = Flat.update()
  end

  def destroy
    @flat = Flat.find(params[:id])
  end

  private

  def strong_flat_params
    params.require(:flat).permit()
  end
end
