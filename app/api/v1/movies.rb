module V1
  class Movies < Grape::API
    format :json
    resource :movies do
      get '/all' do
        Movie.all
      end

      get '/:id' do
        Movie.find(params[:id])
      end
    end
  end
end
