Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :surveys do
    resources :questions, only: [:show, :new, :create]
    resources :text_styles, only: [:create, :new]
  end

  root "surveys#index"
end
