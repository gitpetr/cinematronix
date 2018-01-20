module API
class Root < Grape::API
  format :json
  mount API::V1::Movies
end
end
