class PagesController < ApplicationController
  def home
    @drones = Drone.all
  end

  def dashboard
    @my_bookings = current_user.bookings
    other_bookings = []
    current_user.drones.each do |drone|
    other_bookings << drone.bookings
    end
    @other_bookings = other_bookings.flatten
  end
end
