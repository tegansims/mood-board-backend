Rails.application.routes.draw do
  resources :entries
  resources :categories
  resources :users
  resources :emotions

  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
  get '/you', to: 'users#show' #might need to change this
  

end
