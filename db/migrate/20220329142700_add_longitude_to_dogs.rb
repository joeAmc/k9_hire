class AddLongitudeToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :longitude, :float
  end
end
