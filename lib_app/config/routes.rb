Rails.application.routes.draw do

  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create", as: "post_user"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create", as: "create_session"
  get "/logout", to: "sessions#destroy", as: "destroy_session"

  get "/libraries", to: "libraries#index", as: "libraries"



end
