Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :users
  resource :post
  get '/inst/tags', to: 'posts#index'
  resources :locations
  root 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
