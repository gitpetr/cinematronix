Rails.application.routes.draw do
  mount API::Root => '/api'
  devise_for :admin_users

  namespace :admin do
    resources :movies
    resources :posts
  end

  resources :movies, only: [:index, :show]
  resources :posts, only: [:index]
  root 'movies#index'
end
