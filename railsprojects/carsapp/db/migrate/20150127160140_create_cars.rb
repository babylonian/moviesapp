class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :reg
      t.string :make
      t.string :model
      t.string :engine
      t.integer :size
      t.integer :price
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
