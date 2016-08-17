Rails.application.routes.draw do
  resources :campaigns, only: [:new, :create, :show, :index]
end
