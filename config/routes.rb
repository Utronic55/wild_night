Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :descriptions, only: [:index ,:show]
  resources :events, only: [:index]

end
