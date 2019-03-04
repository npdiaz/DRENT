class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :rent_start_date
      t.datetime :rent_end_date
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
