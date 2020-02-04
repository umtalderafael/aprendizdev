Rails.application.routes.draw do

   resources :users, only: [:index, :new, :create, :destroy]

   resources :locations, only: [:new, :create, :get] 

   resources :contacts, only: [:index, :create]

   get "users/search", to: "users#search", as: :search_user 

   delete "users/:id", to: "users#destroy" 

   get 'about', to: 'about#index'   
   
   get 'profile', to: 'profile#index'   
   
   get 'logout', to: 'sessions#destroy'   
   get 'login', to: 'sessions#login'
   post 'login', to: 'sessions#create'   
   get 'authorized', to: 'sessions#page_requires_login'

   get '*path' => redirect('/404')

   root to: 'sessions#welcome'

end
