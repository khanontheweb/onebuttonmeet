Rails.application.routes.draw do
  get 'users/create'
  get 'users/read'
  get 'users/update'
  get 'users/destroy'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
