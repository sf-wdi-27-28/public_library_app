Rails.application.routes.draw do
  root to: "users#index"
  # get all users
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  # sign_in routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  # sessions routes
  post "/sessions", to: "sessions#create"
end
