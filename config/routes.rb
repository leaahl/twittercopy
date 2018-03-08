Rails.application.routes.draw do
  root to: 'pages#homepage'

  get 'pages/about'

  get 'pages/faq'

  get 'sessions/new'

  resources :users
  resources :microposts, only: [:create, :destroy]

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
