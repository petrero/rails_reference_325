RailsReference325::Application.routes.draw do
  get "surveys/edit"

  get "surveys/index"

  get "surveys/new"

  get "surveys/show"

  resources :surveys
  root to: 'surveys#index'
end
