Rails.application.routes.draw do
  root 'pages#home'

  resources :users
  resources :events
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
