Rails.application.routes.draw do
  devise_for :users
  
  mount RailsAdmin::Engine => '/bomuck', as: 'rails_admin'
  root 'rooms#index'
  resources :rooms 
  
  # get '/users/sign_up' => 'rooms#sign_up'
  post '/create' => 'rooms#user_create'

  # get '/users/sign_in' => 'rooms#sign_in'
  
  get '/log_in' => 'rooms#log_in'
  get '/sign_out' => 'rooms#logout'
  get 'rooms/hashtags/:name' => 'rooms#hashtags'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end