Rails.application.routes.draw do
  mount API::Root => '/api'
  devise_for :admin_users

  namespace :admin do
    resources :movies
    resources :posts
  end

  resources :movies
  root 'movies#index'
end
