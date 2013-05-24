Fruitly::Application.routes.draw do
  resources :orders
  resources :products do
    resources :basket
  end

  root to: "products#index"
end
