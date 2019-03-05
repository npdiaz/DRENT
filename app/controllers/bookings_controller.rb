class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: 'Booking created'
    else
      redirect_to drones_path, error: 'Booking created'
    end
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:rent_start_date, :drone_id, :rent_end_date)
  end

end
