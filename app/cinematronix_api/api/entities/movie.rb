module API
 module Entities
  class Movie < Grape::Entity
   expose :title
   expose :description
   expose :image
  end
 end
end
