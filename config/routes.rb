Rails.application.routes.draw do
  mount API::Root => '/api'
  devise_for :admin_users

  namespace :admin do
    resources :movies do
      resource :recensios
    end

    resources :posts
    resources :recensios
  end

  resources :movies, only: [:index, :show] do
    resource :recensios
  end

  resources :posts, only: [:index]
  root 'movies#index'
end
