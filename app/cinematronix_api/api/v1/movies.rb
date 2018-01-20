module API::V1
  class Movies < Grape::API
    resource :movies do
      get '/' do
        movies = Movie.all
        present movies, with: API::Entities::Movies
      end

      get '/:id' do
        movie = Movie.find(params[:id])
        present movie, with: API::Entities::Movie
      end
    end
  end
end
