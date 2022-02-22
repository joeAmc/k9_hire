class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :availability
      t.integer :total_price

      t.timestamps
    end
  end
end
