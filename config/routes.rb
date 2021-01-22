Rails.application.routes.draw do
  resources :orders
  root to: "dashboard#index"
  resources :dashboard, only: [:index]
  resources :imports do
    collection do
      resources :batch, only: [:create]
    end
  end

  namespace :dashboards do
    resources :imports, only: :index
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
