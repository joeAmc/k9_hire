class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :description
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
