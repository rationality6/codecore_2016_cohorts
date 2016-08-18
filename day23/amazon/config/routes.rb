Rails.application.routes.draw do
  root 'products#index'

  resources :category

  resources :products do
    resources :reviews, only: [:create, :destroy]
  end
end
