Rails.application.routes.draw do

  root to: 'gossips#index'
  get '/gossips', to: 'gossips#index'

  resources :gossips

end
