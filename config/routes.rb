# frozen_string_literal: true

Rails.application.routes.draw do

  resources :classrooms
  resources :posts
  resources :careers
  resources :languages
  resources :users, only: %i[index new create destroy edit update]
  resources :locations, only: %i[new create get edit update]
  resources :contacts, only: %i[index create]
  resources :profile, only: %i[index update]


  get 'users/quantidade', to: 'users#quantidade'



  post 'classrooms/status', to: 'classrooms#status'
  get 'users/search', to: 'users#search', as: :search_user
  get 'users/complete', to: 'users#complete'
  get 'users/languages', to: 'users#languages'
  post 'users/languages', to: 'users#choiches'
  get 'users/home', to: 'users#home'
  delete 'users/:id', to: 'users#destroy'
  get 'about', to: 'about#index'
  get 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'

  root to: 'sessions#welcome'
end
