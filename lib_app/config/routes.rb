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

  # library routes
  get "/libraries", to: "libraries#index", as: "library"
  get "/libraries/new", to: "libraries#new", as: "new_library"
  post "/libraries", to: "libraries#create"
  get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
  # get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
  post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"
end
