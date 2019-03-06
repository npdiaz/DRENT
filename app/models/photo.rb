class Photo < ApplicationRecord
  belongs_to :drone
  mount_uploader :photo, PhotoUploader
end
