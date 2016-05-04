Rails.application.routes.draw do
  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  get "/libraries", to: "libraries#index"
  get "/libraries/new", to: "libraries#new", as: "new_library"
end


# Prefix Verb URI Pattern              Controller#Action
#   root GET  /                        users#index
#  users GET  /users(.:format)         users#index
# new_user GET  /users/new(.:format)     users#new
#        POST /users(.:format)         users#create
#   user GET  /users/:id(.:format)     users#show
#  login GET  /login(.:format)         sessions#new
# sessions POST /sessions(.:format)      sessions#create
# logout GET  /logout(.:format)        sessions#destroy
# libraries GET  /libraries(.:format)     libraries#index
# new_library GET  /libraries/new(.:format) libraries#new
