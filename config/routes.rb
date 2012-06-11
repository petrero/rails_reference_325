RailsReference325::Application.routes.draw do
  %w[articles photos events].each do |poly|
    resources poly do
      resources :comments
    end
  end

  resources :photos
  resources :events
  resources :articles
  root to: 'articles#index'
end
