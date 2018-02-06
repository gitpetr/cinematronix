class Booking < ApplicationRecord
  validates :name, :email, :phone, :date_time, presence: :true
  validates :seat, uniqueness: { scope: :date_time,
                                 message: "Место уже забронировано" }

  validate  :seat_exists?, on: :create

  private

  def seat_exists?
    zal ||= ZalSchema.new.seatnum
    self.errors.add(:seat, 'Вы указали несуществующее место') unless zal.include?(self.seat)
  end
end
