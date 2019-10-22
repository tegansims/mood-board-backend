Rails.application.routes.draw do
  resources :entries
  resources :categories
  resources :users
  resources :emotions

  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
  

end
