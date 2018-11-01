Rails.application.routes.draw do
  
  root to: 'static#home'

  resources :gossips
  
  post '/gossip/:id', to: 'gossip#destroy'

  #get '/new', to: 'gossips#new'
  
  #get 'gossip/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
