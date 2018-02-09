module API
  module Entities
    class Bookings < Grape::Entity
      expose :id
      expose :name
      expose :email
      expose :phone
      expose :seat
      expose :movie_session_id
    end
  end
end
