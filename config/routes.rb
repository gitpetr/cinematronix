Rails.application.routes.draw do
  devise_for :user_admins
  namespace :user_admin do
    resources :movies
  end

  resources :movies
  root 'movies#index'
end
