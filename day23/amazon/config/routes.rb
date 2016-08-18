Rails.application.routes.draw do
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :reviews, only: [:create, :destroy]
  end
end
