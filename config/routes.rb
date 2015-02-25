Rails.application.routes.draw do
  
  devise_for :users
  # , controllers: { registrations: "registrations" }
  resources :users, only: [:index]

  resources :cakes do
  	resources :comments, module: :cakes
  end
  root to: "cakes#index"
end
