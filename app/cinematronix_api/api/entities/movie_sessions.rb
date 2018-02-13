module API
  module Entities
    class MovieSessions < Grape::Entity
      expose :id
      expose :time
      expose :hall
      expose :bookings, using: API::Entities::Booking
    end
  end
end
