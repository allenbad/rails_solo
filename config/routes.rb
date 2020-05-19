Rails.application.routes.draw do
  get '/venues', to: "venues#index"
  get '/venues/:id', to: "venues#show"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :listings
  resources :carts, only:[:create, :index]
  get "/payments/session", to: "payments#get_stripe_id"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
end
