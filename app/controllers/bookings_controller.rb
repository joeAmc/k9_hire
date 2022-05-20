class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def show
    @dog = Dog.find(@booking.dog_id)
    @user = User.find(@booking.user_id)
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new()
  end


  def create
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    # @booking.dog_id = @dog.id
    # if @pick_up.blank? || @drop_off.blank?
    #   flash[:message] = "You have to submit the dates!"
    # elsif

    if @pick_up.nil? || @drop_off.nil?
      flash[:message] = "Invalid Dates!"

    # return flash[:message] = "You have to submit the dates!" if @pick_up == a.blank? || @drop_off == b.blank?
    else
      @pick_up = Date.parse(params[:booking][:pick_up])
      @drop_off = Date.parse(params[:booking][:drop_off])

      #@duration = (@drop_off - @pick_up).to_i
    #end
      @booking.total_price = @dog.price * (@drop_off - @pick_up).to_i
      #@booking.total_price = (@dog.price * @duration).round(2)
    end




    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def edit
  @user = current_user
  @dog = @booking.dog
  # @booking = Booking.find(params[:id])
  end

  def update
    @pick_up = Date.parse(params[:booking][:pick_up])
    @drop_off = Date.parse(params[:booking][:drop_off])
    @duration = (@drop_off - @pick_up).to_i
    @booking.total_price = @booking.dog.price * @duration
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render 'edit'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    # if @booking.drop_off > Date.today
      #@booking.destroy
       @booking.destroy!
      # rescue ActiveRecord::RecordNotDestroyed => error
      #   puts "errors that prevented destruction: #{error.record.errors}"
      redirect_to dashboard_path, :notice => "Your booking has been deleted."
      #redirect_to root_path
    #else
      #render 'bookings/:booking_id'
      #redirect_to dashboard_path
    #end
  end

  private

  def booking_params

  params.require(:booking).permit(:pick_up, :drop_off, :price_cents)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
