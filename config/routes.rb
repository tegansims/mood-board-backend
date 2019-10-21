Rails.application.routes.draw do
  resources :entries
  resources :categories
  resources :users
  resources :emotions

  get '/search', to: 'entries#search'
  post '/search', to: 'entries#edit'

end
