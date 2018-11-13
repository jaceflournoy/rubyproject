Rails.application.routes.draw do
  root 'cars#index'
  resources :quotes
  resources :loans
  resources :employees
  resources :roles
  resources :customers
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
