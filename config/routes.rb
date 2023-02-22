Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/") --> # Read all
  root 'restaurants#index'
  get 'reviews/new'
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[index new create]
  end
  # # * /reviews/:id
  # resources :reviews, only: %i[show edit update destroy]
end
