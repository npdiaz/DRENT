class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :drone
  has_many :reviews
  validate :check_if_drone_is_available_for_booking

  def total_price
    renting_time = self.rent_end_date - self.rent_start_date
    total_price = renting_time * drone.price / 86400
    return total_price.round.to_i
  end

  def status
    if self.rent_end_date < DateTime.current
      return "finished"
    elsif self.rent_end_date > DateTime.current && self.rent_start_date < DateTime.current
      return "ongoing"
    else
      return "booked"
    end
   end

  def check_if_drone_is_available_for_booking
    if self.rent_start_date > self.rent_end_date
      errors.add(:base, "your ending date can't be before the start")
    end
  end

  end
