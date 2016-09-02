Rails.application.routes.draw do
  resources :sessions, only: [:new, :create] do
    # delete "/sessions" => "sessions#destroy", on: :collection, as: ""
    delete :destroy, on: :collection
  end

  resources :feedbacks
  root 'messages#index'

  resources :messages do
    resources :comments, only: [:create, :destroy, :show, :edit, :update]
    resources :likes, only: [:create, :destroy]
    # resources :feedbacks
  end

  resources :users, only: [:new, :create]

  # get '/messages/new' => 'messages#new', as: :new_message
  # post '/messages' => 'messages#create', as: :messages
  # get '/messages/:id' => 'messages#show', as: :message
  # delete "/messages/:id" => "messages#destroy"
  # get "/messages/:id/edit" =>'messages#edit', as: :edit_message
  # patch '/messages/:id' => "messages#update"

  resources :titles
end
