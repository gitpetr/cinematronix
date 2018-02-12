module API
  module Entities
    class Booking < Grape::Entity
      expose :seat
    end
  end
end
