Rails.application.routes.draw do

  get "users/show" => "users#show"
  get '/login_form' => 'users#login_form'
  post '/login' => 'users#login'
  delete '/logout' => 'users#logout'

  root 'home#top'
  resources :matches 
  resources :users 

end