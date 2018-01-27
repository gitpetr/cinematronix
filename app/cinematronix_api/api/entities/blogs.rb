module API
  module Entities
    class Blogs < Grape::Entity
      expose :id
      expose :title
      expose :body
    end
  end
end
