Rails.application.routes.draw do

  

  root   'tasks#index'
  get '/login_form' => 'users#login_form'
  post '/login' => 'users#login'
  delete '/logout' => 'users#logout'
  get 'home/top'
  get '/index/:id' => "tasks#index"

  resources :users ,     only: [:new, :create]
  resources :tasks,      only: [:new, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
