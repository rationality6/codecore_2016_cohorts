Rails.application.routes.draw do
    get '/' => 'messages#index'
    get '/messages/new' => 'messages#new'
    post 'messages' => 'messages#create'
end
