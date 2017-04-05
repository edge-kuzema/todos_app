Rails.application.routes.draw do
  root 'todos#index'
  delete '/clear_completed', to: 'todos#destroy_completed'
  resources :todos, only: [:index, :create, :update, :destroy]
end
