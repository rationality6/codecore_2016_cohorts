Rails.application.routes.draw do
  root 'messages#index'

  get '/messages/new' => 'messages#new', as: :new_message
  post '/messages' => 'messages#create', as: :messages
  get '/messages/:id' => 'messages#show', as: :message
  delete "/messages/:id" => "messages#destroy"

  # get "/questions/new" => "questions#new",    as: :new_question
  # post "/questions"    => "questions#create", as: :questions
  # get "/questions/:id" => "questions#show",   as: :question
  # get "/questions"     => "questions#index"
  # get "/questions/:id/edit" => "questions#edit", as: :edit_question
  # patch "/questions/:id" => "questions#update"
  # delete "/questions/:id" => "questions#destroy"

  # resources :messages

end
