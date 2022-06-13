Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  get 'about', to: 'pages#about'
  get 'wallet', to: 'pages#wallet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies do
    resources :tokens, only: %i[new create]
    resources :ratings, only: :create
  end
  resources :tokens, only: %i[show edit update] do
    resources :user_tokens, only: %i[new create]
  end
end
