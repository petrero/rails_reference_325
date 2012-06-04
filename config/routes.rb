RailsReference325::Application.routes.draw do
  scope ":locale" do
    resources :products
    root to: 'products#index'
  end
end
