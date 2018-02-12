module API::V1
  class MovieSessions < Grape::API
    version 'v1', using: :path
    resource :moviesession do
      desc 'Return a one session'
      route_param :id do
        get do
          session = MovieSession.find(params[:id])
          present session, with: API::Entities::MovieSessions
        end
      end
    end
  end
end
