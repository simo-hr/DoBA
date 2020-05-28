Rails.application.routes.draw do

  get '/login_form' => 'users#login_form'
  post '/login' => 'users#login'
  delete '/logout' => 'users#logout'

  root 'home#top'
  resources :matches 
  resources :users do
    resources :messages, only: [:index, :new, :create, :destroy]
    end
end