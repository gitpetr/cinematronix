module API::V1
  class Movies < Grape::API
    version 'v1', using: :path
    resource :movies do
      desc 'Return list of movies'
      get do
        movies = Movie.all
        present movies, with: API::Entities::Movies
      end

      desc 'Return a specific movie'
      route_param :id do
        get do
          movie = Movie.find(params[:id])
          present movie, with: API::Entities::Movie
        end
      end

      desc 'Create a movie.'
      params do
        requires :movie, type: Hash do 
          requires :title 
          requires :description 
        end
      end

      post do
        movie = Movie.create(params[:movie])
        present movie, with: API::Entities::Movie
      end

      desc 'Update a movie'
      patch ':id' do
        movie = Movie.find(params[:id])
        movie.update(params[:movie])
        present movie, with: API::Entities::Movie
      end

      desc 'Delete a movie'
      delete ':id' do
        movie = Movie.find(params[:id])
        movie.destroy
        present movies, with: API::Entities::Movies
      end
    end
  end
end
