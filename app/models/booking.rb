class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :drone
  has_many :reviews
end
