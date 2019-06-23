Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stores
  get '/newstore', to: 'stores#new'
  get '/stores', to: 'store#index'
  root 'stores#index'
end
