Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "statuses#index"

  get '/statuses', to: 'statuses#index'
  post '/statuses', to: 'statuses#create' 
  get '/statuses/new(/:status_id)', to: 'statuses#new', as: 'status_new' 
  get '/statuses/:id', to: 'statuses#show', as: 'status'
  get '/statuses/:id/edit', to: 'statuses#edit', as: 'status_edit'
  # get '/statuses/new/:id', to: 'statuses#new', as: 'status_reply'
  patch '/statuses/:id', to: 'statuses#update' 
  delete '/statuses/:id', to: 'statuses#destroy'
end
