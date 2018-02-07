Rails.application.routes.draw do
  resources :bookings
  mount API::Root => '/api'
  devise_for :admin_users

  namespace :admin do
    resources :movies do
      resource :recensios
      resources :movie_sessions do
        resources :bookings
      end
    end

    resources :posts
    resources :recensios
  end

  resources :movies, only: [:index, :show] do
    resource :recensios
    resources :movie_sessions do
      resources :bookings
    end
  end

  resources :posts, only: [:index]
  root 'movies#index'
end
