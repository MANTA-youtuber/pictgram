Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/index'
  get 'topics/:id', to: 'topics#show'

  get 'sessions/new'
  root 'pages#index'
  get 'users/new'
  get 'pages/help'
  get 'comments/list'

  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  resources :users
  resources :topics
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'

  resources :topics do
    resources :comments
  end
end
