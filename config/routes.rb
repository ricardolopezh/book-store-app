Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stores
  resources :books
  get '/home', to: 'static_pages#home'
  root 'static_pages#home'
end
