Rails.application.routes.draw do
  
  root to: 'static#home'

  resources :gossips
  
  get '/new', to: 'gossip#new'
  post '/new', to: 'gossip#create'

  get '/gossip/:id', to: 'gossip#show' 

  get '/gossip/edit/:id', to: 'gossip#edit'
  post '/gossip/edit/:id', to: 'gossip#update'
  delete '/gossip/:id', to: 'gossip#destroy'

  get '/gossip', to: 'gossip#index'

  get '/gossip/:gossip_id', to: 'comments#index'

  get '/gossip/:gossip_id', to: 'comments#new'
  post '/gossip/:gossip_id', to: 'comments#create'

  get '/comments/edit/:id', to: 'comments#edit'
  post '/comments/edit/:id', to: 'comments#update'
  delete '/comments/edit/:id', to: 'comments#destroy'
  
end
