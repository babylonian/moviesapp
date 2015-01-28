class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :photo
      t.string :password_digest
      t.integer :ad_id

      t.timestamps
    end
  end
end
