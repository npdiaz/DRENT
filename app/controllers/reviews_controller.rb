class ReviewsController < ApplicationController
  def new
    # we need @drone in our `simple_form_for`
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `drone_id` to asssociate review with corresponding drone
    @review.booking = Booking.find(params[:booking_id])
      if @review.save!
        redirect_to bookings_path, notice: 'review created'
      else
        redirect_to drones_path, error: 'review created'
      end
  end

  private

  def review_params
    params.require(:review).permit(:content, :description, :rating)
  end
end
