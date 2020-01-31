Rails.application.routes.draw do

   resources :users, only: [:new, :create]

   get 'logout', to: 'sessions#destroy'   
   get 'login', to: 'sessions#login'
   post 'login', to: 'sessions#create'   
   get 'authorized', to: 'sessions#page_requires_login'
   root to: 'sessions#welcome'

end
