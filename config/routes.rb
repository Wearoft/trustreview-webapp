Rails.application.routes.draw do
  get 'reviews/show'
  root to: 'partners#index'

  resources :partners
  resources :sectors
  resources :clients
end
