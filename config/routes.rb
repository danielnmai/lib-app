Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #User routes
  root "users#index"
  get "/users" => "users#index", as: "users"
  get "/signup" => "users#new", as: "new_user"
  post "/users" => "users#create"
  get "/users/:id" => "users#show", as: "user"

  #Session routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #Library routes
  get "/libraries" => "libraries#index"
  get "/libraries/new" => "libraries#new", as: "new_library"
  post "/libraries" => "libraries#create"

  #Library User routes
  get "/users/:user_id/libraries" => "library_users#index", as: "user_libraries"
  post "/libraries/:library_id/users" => "library_users#create", as: "library_users"

end
