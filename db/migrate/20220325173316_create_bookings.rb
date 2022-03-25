class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :clown_id
      t.string :time
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
