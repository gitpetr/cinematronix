module API
  module Entities
    class Posts < Grape::Entity
      expose :id
      expose :title
      expose :body
    end
  end
end
