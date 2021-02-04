Rails.application.routes.draw do
  resources :orders do
    resources :shipped, only: :create, module: "orders"
  end
  root to: "dashboard#index"
  resources :dashboard, only: [:index]
  resources :imports

  namespace :dashboards do
    resources :imports, only: :index
    resources :orders, only: :index
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
