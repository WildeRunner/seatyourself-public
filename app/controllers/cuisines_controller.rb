class CuisinesController < ApplicationController
  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def delete
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:name)
  end

end