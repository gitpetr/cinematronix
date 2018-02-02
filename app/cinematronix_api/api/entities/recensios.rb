module API
  module Entities
    class Recensios < Grape::Entity
      expose :id
      expose :critic_name
      expose :critic_email
      expose :body
      expose :movie_id
    end
  end
end
