class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :recensios, dependent: :destroy
  validates :title, :description, presence: true
end
