class ZalSchema
  attr_reader :seatnum

  def initialize
    @seatnum = []
    seat_nums_create
  end

  private

  def seat_nums_create
    (1..20).to_a.each do |row|
      (1..20).to_a.each do |seat|
        seatnum << (row.to_s + '_' + seat.to_s)
      end
    end
  end
end
