module API::V1
  class Bookings < Grape::API
    version 'v1', using: :path
    resource :bookings do
      desc 'Return list of movies'
      get do
        bookings = Booking.all
        present bookings, with: API::Entities::Bookings
      end

      desc 'Return a one booking'
      route_param :id do
        get do
          booking = Booking.find(params[:id])
          present booking, with: API::Entities::Bookings
        end
      end

      desc 'Create a booking.'
      params do
        requires :booking, type: Hash do
          requires :name
          requires :email
          requires :phone
          requires :seat
          requires :movie_session_id
        end
      end

      post do
        booking = Booking.create(params[:booking])
        present booking, with: API::Entities::Bookings
      end
    end
  end
end
