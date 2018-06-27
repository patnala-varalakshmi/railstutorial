Rails.application.routes.draw do
  get '/sign_up', to: 'users#new'
  get '/help' , to: 'static_pages#help'
  get '/about' , to: 'static_pages#about'
  get '/contact' , to: 'static_pages#contact'
  resources :users
  post '/sign_up',  to: 'users#create'
  root "static_pages#home"
end
