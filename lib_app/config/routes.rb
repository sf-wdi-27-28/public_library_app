Rails.application.routes.draw do
  root to: "users#index"
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
end


# Prefix Verb URI Pattern          Controller#Action
#   root GET  /                    users#index
#  users GET  /users(.:format)     users#index
# new_user GET  /users/new(.:format) users#new
#        POST /users(.:format)     users#create
