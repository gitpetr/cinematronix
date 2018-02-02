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
    end
  end
end
