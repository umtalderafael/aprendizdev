Rails.application.routes.draw do

   resources :users, only: [:index, :new, :create, :destroy]

   resources :locations, only: [:new, :create] 

   get 'about', to: 'about#index'   
   get 'contact', to: 'contact#index'   
   get 'profile', to: 'profile#index'   
   
   get 'logout', to: 'sessions#destroy'   
   get 'login', to: 'sessions#login'
   post 'login', to: 'sessions#create'   
   get 'authorized', to: 'sessions#page_requires_login'
   root to: 'sessions#welcome'

end
