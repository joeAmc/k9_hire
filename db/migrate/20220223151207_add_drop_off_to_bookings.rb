class AddDropOffToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :drop_off, :datetime
  end
end
