Rails.application.routes.draw do
  mount Movie::API => '/'  
  devise_for :admin_users
  
  namespace :admin do
    resources :movies
  end

  resources :movies
end
