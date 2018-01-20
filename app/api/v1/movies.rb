module V1
  class Movies < Grape::API
    resource :movies do
      get '/' do
        Movie.all
      end

      get '/:id' do
        Movie.find(params[:id])
      end
    end
  end
end
