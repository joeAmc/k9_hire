class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end


def create
  @dog = Dog.find(params[:dog_id])
  @booking = Booking.new(booking_params)
  @booking.dog = @dog
    @booking.user_id = @user.id
    @booking.dog_id = @dog.id
    if @booking.save
      flash[:success] = "You have submited the information successfully!"
      redirect_to booking_path(@booking)
    else
      redirect_to root_path
    end
  end

  def edit

  @booking = Booking.find(params[:id])
  end

  def update

  booking = Booking.find(params[:id])
  booking.update(booking_params)
  redirect_to booking_path(booking)
  end

  private

  def booking_params

  params.require(:booking).permit(:pick_up, :drop_off, :total_price)
  end
end
