module API
  module Entities
    class MovieSessions < Grape::Entity
      expose :id
      expose :time
    end
  end
end
