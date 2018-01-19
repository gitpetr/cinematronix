module V1
  class Root < Grape::API
    mount V1::Movies
  end
end
