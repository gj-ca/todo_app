Rails.application.routes.draw do
  # path, controller#action
  get "/todos", to: "todos#index"
  post "/todos", to: "todos#create", as: "todo_items"
  get "/todos/new", to: "todos#new"
  get "/todos/:id", to: "todos#show", as: "todo_item"
  get "/todos/:id/edit", to: "todos#edit", as: "edit_todo"
  patch "/todos/:id", to: "todos#update"
  delete "/todos/:id", to: "todos#destroy"

  root to: "todos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
