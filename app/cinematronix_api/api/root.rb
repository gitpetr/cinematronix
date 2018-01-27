module API
  class Root < Grape::API
    format :json
    mount API::V1::Movies
    mount API::V1::Blogs
  end
end
