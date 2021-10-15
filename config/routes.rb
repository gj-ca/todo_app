Rails.application.routes.draw do
  # path, controller#action
  get "/todos", to: "todos#index" 
  get "/todos/new", to: "todos#new"
  get "/todos/:id", to: "todos#show"
  get "/todos/:id/edit", to: "todos#edit"

  root to: "todos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
