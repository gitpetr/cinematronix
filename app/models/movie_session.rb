class MovieSession < ApplicationRecord
  belongs_to :movie
  has_many :bookings

  def hall
    @hall ||= Halls::BLUE
  end
end
