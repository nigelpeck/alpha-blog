Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  # this is how to expose the routes step by step if required
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # this exposes all routes - including all REST-ful routes
  # REST == Representation state transfer - mappung HTTP vers (get, post, put / patch, delete) to CRUD actions
  resources :articles
end
