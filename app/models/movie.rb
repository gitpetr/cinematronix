class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :recensios
  validates :title, :description, presence: true
end
