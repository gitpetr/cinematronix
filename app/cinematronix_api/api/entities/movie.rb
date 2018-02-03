module API
  module Entities
    class Movie < Grape::Entity
      expose :id
      expose :title
      expose :description
      expose(:image) do |movie|
        movie.image.url(:medium)
      end
      expose :recensios, using: API::Entities::Recensios, as: :recensios
    end
  end
end
