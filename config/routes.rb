Fruitly::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :orders
  resources :products do
    resources :basket
  end

  root to: "products#index"
end
