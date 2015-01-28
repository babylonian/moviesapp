class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :car_id

      t.timestamps
    end
  end
end
