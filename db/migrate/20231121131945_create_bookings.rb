class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :total_price

      t.timestamps
    end
  end
end
