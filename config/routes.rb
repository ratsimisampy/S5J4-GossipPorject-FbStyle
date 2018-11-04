Rails.application.routes.draw do
  
  root to: 'static#home'

  resources :gossips
  
  resources :gossip do
    resources :comments

  end

  #post '/comments/new', to: 'comments#new'
end
