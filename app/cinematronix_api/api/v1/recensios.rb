module API::V1
  class Recensios < Grape::API
    version 'v1', using: :path
    resource :movies do
      route_param :movie_id do
        resource :recensios do
          desc 'Return list of recensio'
          get do
            recensios = Recensio.all
            present recensios, with: API::Entities::Recensios
          end

          desc 'Return a specific recensio'
          route_param :id do
            get do
              recensio = Recensio.find(params[:id])
              present recensio, with: API::Entities::Recensios
            end
          end

          desc 'Create a recensio.'
          params do
            requires :recensio, type: Hash do
              requires :critic_name
              requires :critic_email
              requires :body
              requires :movie_id
            end
          end

          post do
            recensio = Recensio.create(params[:recensio])
            present recensio, with: API::Entities::Recensios
          end

          desc 'Update a recensio'
          patch ':id' do
            recensio = Recensio.find(params[:id])
            recensio.update(params[:recensio])
            present recensio, with: API::Entities::Recensios
          end

          desc 'Delete a recensio'
          delete ':id' do
            recensio = Recensio.find(params[:id])
            recensio.destroy
            present recensio, with: API::Entities::Recensios
          end
        end
      end
    end
  end
end
