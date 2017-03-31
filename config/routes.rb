Rails.application.routes.draw do


  root 'todo_lists#all'

  get '/active', to: 'todo_lists#active'
  get '/completed', to: 'todo_lists#completed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
