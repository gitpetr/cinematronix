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
    end
  end
end
