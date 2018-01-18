Rails.application.routes.draw do
  namespace :admin do
    resources :movies
  end

  devise_for :admins
  resources :movies
  root 'movies#index'
end
