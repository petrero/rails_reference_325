RailsReference325::Application.routes.draw do
  resources :products
  root to: 'products#index'
end
