class DogsController < ApplicationController
  before_action :find_dog, only: [ :show, :edit]

  def index
    @dogs = Dog.all
    @markers = @dogs.map do |dog|{
      lat: dog.latitude,
      lng: dog.longitude,
      index: render_to_string(partial: "dogs_window", locals: { dog: dog.location })
    }
    end
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  # def create
  #   if @dog.save
  #     redirect_to dog_path(@dog), notice: '🐶 Your dog has been added! 🐶'
  #   else
  #     render 'dogs/show'
  #   end
  # end

  # def edit
  # end

  # def update
  #   if @dog.update(dog_params)
  #     redirect_to @dog, notice: '🐶 Your dog info has updated! 🐶'
  #   else
  #     render :edit
  #   end
  # end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :description, :price, :location)
  end

end
