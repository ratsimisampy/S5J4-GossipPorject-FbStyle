Rails.application.routes.draw do
  
  root to: 'static#home'

  resources :gossips
  
  post '/gossip/:id', to: 'gossip#destroy'

  #get '/new', to: 'gossips#new'
  
  #get 'gossip/create'
  
end
