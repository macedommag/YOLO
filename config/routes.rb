Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies do
    resources :quotas, only: %i[new create]
  end
  resources :quotas, only: %i[show]
end
