class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :recensios, dependent: :destroy
  has_many :movie_sessions, dependent: :destroy
  validates :title, :description, presence: true
end
