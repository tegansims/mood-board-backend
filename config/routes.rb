Rails.application.routes.draw do
  resources :entries
  resources :categories
  resources :users

  get '/search', to: 'entries#search'
  post '/search', to: 'entries#index'
  # get '/search', to: 'api#new'
  # post '/search', to: 'api#show'
end
