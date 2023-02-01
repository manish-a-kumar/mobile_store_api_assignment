Rails.application.routes.draw do
  resources :specifications, only: [:index, :show, :create, :update, :destroy]
  resources :devices, only: [:index, :show, :create, :update, :destroy]
  resources :brands
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
