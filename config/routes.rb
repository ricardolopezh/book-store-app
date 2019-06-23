Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stores
  get '/newstore', to: 'stores#new'
  root 'stores#index'
end
