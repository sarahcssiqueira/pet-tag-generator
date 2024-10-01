Rails.application.routes.draw do
  # Users routes
  resources :users, only: [ :index, :new, :create, :edit, :update, :show, :destroy ]

  namespace :admins do
    resources :users, only: [ :index, :edit, :update, :destroy ]
  end

  # Sessions routes
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Pets Routes
  resources :pets, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]

  # Privacy Policy
  resources :privacy_policy, path: "privacy-policy",  only: [ :index ]

  # Homepage
  get "home/index"
  root "home#index"

  # External Routes
  get "github_repo", to: proc { |env| [ 302, { "Location" => "https://github.com/sarahcssiqueira/pet-tag-generator" }, [] ] }
  get "contribute_guide", to: proc { |env| [ 302, { "Location" => "https://github.com/sarahcssiqueira/pet-tag-generator/blob/main/CONTRIBUTING.md" }, [] ] }
end
