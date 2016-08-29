Rails.application.routes.draw do
  resources :feedbacks
  root 'messages#index'

  resources :messages do
    resources :comments, only: [:create, :destroy, :show]
  end

  # get '/messages/new' => 'messages#new', as: :new_message
  # post '/messages' => 'messages#create', as: :messages
  # get '/messages/:id' => 'messages#show', as: :message
  # delete "/messages/:id" => "messages#destroy"
  # get "/messages/:id/edit" =>'messages#edit', as: :edit_message
  # patch '/messages/:id' => "messages#update"

  resources :titles
end
