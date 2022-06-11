Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'wallet', to: 'pages#wallet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies do
    resources :tokens, only: %i[new create]
  end
  resources :tokens, only: %i[show] do
    resources :user_tokens, only: %i[new create]
  end
end
