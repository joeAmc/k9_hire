class DogsController < ApplicationController
  before_action :find_dog, only: [ :show ]

  def index
    @dogs = Dog.all
  end

  def show
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  # def set_dog
  #   params.require(:dog).permit(:name, :breed, :age, :description, :price, :location)
  # end

end
