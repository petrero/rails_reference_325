RailsReference325::Application.routes.draw do "articles#index"
  root to: 'articles#index'
  resources :articles
  resources :comments
end
