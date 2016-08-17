Rails.application.routes.draw do
  resources :campaigns, only: [:new, :create, :show, :index]
  resources :animals, only: [:new, :show, :create, :index]
end
