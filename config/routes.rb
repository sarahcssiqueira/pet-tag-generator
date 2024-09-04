Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :users, only: [ :new, :create, :show, :delete ]
  resources :pets, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  resources :sessions, only: [ :new, :create, :destroy ]

  get "home/index"
  root "home#index"

  # Defines a route for "/pets"
  get "/pets", to: "pets#index"
  get "/users", to: "users#index"

  # Routes for sessions (login and logout)
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
end
