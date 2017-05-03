Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :messages, only: [:new]
  
  root to: 'users#index'
end
