Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :surveys do
    resources :questions, only: [:show, :new, :create]
    resources :text_styles, only: [:create, :new]
    resources :multi_choice_styles, only: [:new, :create, :show]
  end

  resources :questions, only: [] do
    resources :text_answers
  end

  resources :multi_choice_styles, only: [] do
    resources :multi_choice_options, only: [:new, :create, :show]
  end


  root "surveys#index"
end
