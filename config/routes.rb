Rails.application.routes.draw do
  
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
 
  resources :users, except: [:new]
  
  # we don'y need to fo this now because all of the routes are exposed now
  # only: [:show, :index, :new, :create, :edit, :update]

end
