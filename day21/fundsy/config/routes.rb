Rails.application.routes.draw do
  resources :campaigns, only: [:new, :create, :show, :index] do
    resources :pledges, only: [:create, :destroy]
  end
  resources :animals, only: [:new, :show, :create, :index]
end
