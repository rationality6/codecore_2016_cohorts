Rails.application.routes.draw do
    get '/messages' => 'messages#index'
    get '/messages/new' => 'messages#new'
    get '/' => 'pages#index'
    get '/next' => 'pages#next'
    post 'message' => 'messages#create'
end
