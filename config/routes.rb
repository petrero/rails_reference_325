require 'api_constraints'
RailsReference325::Application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    # /api/... Api::
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      resources :products
    end
    scope module: :v2, constraints: ApiConstraints.new(version: 2, default: true) do
      resources :products
    end
  end

  resources :products
  root to: 'products#index'
end
