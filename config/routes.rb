Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sales', to: 'quotes#sales', as: 'sales'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users
  get 'home/index'
  root 'home#index'

  resources :quotes do
    collection do
      get 'final_price'
    end
  end

  resources :loans do
    member do
      get 'loan_interestrate'
    end
  end

  resources :roles
  resources :customers
  resources :searches

  resources :cars do
    member do
      get 'wholesale_price'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
