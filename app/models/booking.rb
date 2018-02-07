class Booking < ApplicationRecord
  belongs_to :movie_session

  validates :name, :email, :phone, :seat, presence: :true
  validates :seat, uniqueness: { message: "Место уже забронировано" }
  validate  :seat_exists?, on: :create

  private

  def seat_exists?
    @hall ||= Hall.new.blue_hall
    @row, @seat =  self.seat.split(':')
    self.errors.add(:seat, 'Вы указали несуществующее место') unless (1..@hall[:rows]).cover?(@row.to_i) && (1..@hall[:seats]).cover?(@seat.to_i)
  end
end
