module API
  module Entities
    class Bookings < Grape::Entity
      expose :id
      expose :name
      expose :email
      expose :phone
      expose :seat
      expose :movie_session_id
      expose :movie_session, using: API::Entities::MovieSessions
    end
  end
end
