class Booking < ApplicationRecord
  belongs_to :movie_session

  validates :name, :email, :phone, :seat, presence: :true
  validates :seat, uniqueness: { scope: :movie_session, message: "Место уже забронировано" }
  validate  :seat_exists?, on: :create

  def hall
    @hall ||= Halls::BLUE
  end

  private

  def seat_exists?
    @hall ||= Halls::BLUE
    @row, @seat =  self.seat.split(':')
    self.errors.add(:seat, 'Вы указали несуществующее место') unless (@row.to_i > 0 && @row.to_i <= @hall[:rows]) && (@seat.to_i > 0 && @seat.to_i <= @hall[:seats])
  end
end
