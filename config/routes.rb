RailsReference325::Application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :products
    root to: 'products#index'
  end
end
