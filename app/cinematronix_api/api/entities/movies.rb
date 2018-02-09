module API
  module Entities
    class Movies < Grape::Entity
      expose :id
      expose :title
      expose :description
      expose(:image) do |movie|
        movie.image.url(:thumb)
      end

      expose(:imagemedium) do |movie|
        movie.image.url(:medium)
      end

      expose :recensios, using: API::Entities::Recensios
      expose :movie_sessions, using: API::Entities::MovieSessions
    end
  end
end
