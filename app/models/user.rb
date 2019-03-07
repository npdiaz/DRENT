class User < ApplicationRecord
  has_many :drones
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, :birth_date, :telephone, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
