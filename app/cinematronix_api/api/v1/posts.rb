module API::V1
  class Posts < Grape::API
    version 'v1', using: :path
    resource :posts do
      desc 'Return list of posts'
      get do
        posts = Post.all
        present posts, with: API::Entities::Posts
      end

      desc 'Return a specific post'
      route_param :id do
        get do
          post = Post.find(params[:id])
          present posts, with: API::Entities::Posts
        end
      end
    end
  end
end
