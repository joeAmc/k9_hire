class AddLatitudeToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :latitude, :float
  end
end
