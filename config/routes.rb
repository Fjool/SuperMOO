Rails.application.routes.draw do
  resources :destinations
  resources :origins
  resources :directions
  resources :locations
  get 'home/index'
  root "home#index"
end
