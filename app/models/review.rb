class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true

  validates :booking, uniqueness:  true

end
