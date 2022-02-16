Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'secrets#new'
  post '/login', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
  
  resources :application
  resources :sessions
end
