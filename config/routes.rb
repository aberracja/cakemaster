Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:index]

  resources :cakes
  root to: "cakes#index"
end
