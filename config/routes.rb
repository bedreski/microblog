Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "statuses#index"

  get '/statuses', to: 'statuses#index'
  post '/statuses', to: 'statuses#create' #call create method 
end
