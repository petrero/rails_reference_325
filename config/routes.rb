RailsReference325::Application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    # /api/... Api::
    namespace :v1 do
      resources :products
    end
  end

  resources :products
  root to: 'products#index'
end
