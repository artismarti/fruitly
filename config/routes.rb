Fruitly::Application.routes.draw do
  resources :orders
  resources :products do
    resources :basket
  end

  root to: "products#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
