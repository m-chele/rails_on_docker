Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/my_todo_items'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :todo_items, only: [:index, :show, :create, :update, :destroy]
    end
  end
end