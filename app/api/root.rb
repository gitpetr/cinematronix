class Root < Grape::API
  format :json
  mount V1::Movies
end
