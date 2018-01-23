Rails.application.routes.draw do
  mount API::Root => '/api'
  devise_for :admin_users

  namespace :admin do
    resources :movies
  end

  resources :movies
  root 'movies#index'
end
