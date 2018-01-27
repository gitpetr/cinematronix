module API::V1
  class Blogs < Grape::API
    version 'v1', using: :path
    resource :blogs do
      desc 'Return list of posts'
      get do
        posts = Blog.all
        present posts, with: API::Entities::Blogs
      end

      desc 'Return a specific post'
      route_param :id do
        get do
          post = Blog.find(params[:id])
          present posts, with: API::Entities::Blogs
        end
      end
    end
  end
end
