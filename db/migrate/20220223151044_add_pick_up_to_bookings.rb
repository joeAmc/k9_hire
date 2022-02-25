class AddPickUpToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :pick_up, :datetime
  end
end
