Rails.application.routes.draw do
  
  # Routes for Pages
  root 'pages#home'
  get 'about', to: 'pages#about'

  # Routes for Articles
  resources :articles

  # Routes for Users
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # Routes for Sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Routes for Categories
  resources :categories, except: [:destroy]


end
