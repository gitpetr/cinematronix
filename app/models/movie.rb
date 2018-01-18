class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, :description, presence: true
end
