module API
  module Entities
    class Movies < Grape::Entity
      expose :id
      expose :title
    end
  end
end
