class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def index
    
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal), notice: "Campaign created!"
    else
      render :new
    end
  end

  def show
      @animal = Animal.find params[:id]
  end

  private
  def animal_params
    params.require(:animal).permit(:title, :description, :goal)
  end
end
