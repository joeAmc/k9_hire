class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update]

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

  def create
    @dog = Dog.new(dog_params)
    @user = current_user
    @dog.user_id = @user

    if @dog.save
      redirect_to dog_path(@dog), notice: '🐶 Your dog has been added! 🐶'
    else
      render root_path
    end
  end

  def edit
  end

  def update
    if @dog.update(dog_params)
      redirect_to @dog, notice: '🐶 Your dog info has updated! 🐶'
    else
      render :edit
    end
  end

  def destroy
    @dog = dog.find(params[:id])
    @dog.destroy
    redirect_to root_path
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :description, :price, :location)
  end
end
