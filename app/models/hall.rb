class Hall
  attr_reader :blue_hall

  def initialize
    @blue_hall = { rows: 18, seats: 35 }.freeze
  end
end
