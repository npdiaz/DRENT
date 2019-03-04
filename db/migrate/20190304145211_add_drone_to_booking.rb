class AddDroneToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :drone, foreign_key: true
  end
end
