class Regusers::BookingsController < ApplicationController
  # skip_after_action :verify_policy_scoped, :only => :index

  def index
    @user = current_user
    @dog = Dog.new
    @bookings = Booking.all
    @past_bookings = @user.bookings.select{ |booking| booking.drop_off < Date.today }
    @future_bookings = @user.bookings.select{ |booking| booking.drop_off > Date.today }
    @owner_bookings = @bookings.select{ |booking| booking.dog.user == current_user }
    @dogs = @user.dogs
    @dogs = current_user.bookings.map { |booking| booking.dog }

  end
end
