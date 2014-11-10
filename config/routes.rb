Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :surveys, only: [:index, :show,:new, :create] do
    resources :questions, only: [:show, :new, :create]
  end

  root "surveys#index"
end
