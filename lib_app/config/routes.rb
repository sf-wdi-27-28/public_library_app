Rails.application.routes.draw do
  root to: "users#index"
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
# 
#
# Prefix Verb URI Pattern          Controller#Action
#   root GET  /                    users#index
#  users GET  /users(.:format)     users#index
# new_user GET  /users/new(.:format) users#new
#        POST /users(.:format)     users#create
#   user GET  /users/:id(.:format) users#show
#  login GET  /login(.:format)     sessions#new
# logout GET  /logout(.:format)    sessions#destroy
# sessions POST /sessions(.:format)  sessions#create
