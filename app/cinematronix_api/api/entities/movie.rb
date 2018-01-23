module API
  module Entities
    class Movie < Grape::Entity
      expose :id
      expose :title
      expose :description
      expose(:image) do |movie|
        movie.image.url(:medium)
      end
    end
  end
end
