Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :surveys, only: [:index, :new, :create]

  root "surveys#index"
end
