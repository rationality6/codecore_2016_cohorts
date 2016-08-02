Rails.application.routes.draw do
    get 'messages/index'
    get 'welcome' => 'pages#home'
    get 'message' => 'messages#index'
    get 'hello/show'
    match ':controller(/:action(/:id))', via: [:get, :post, :patch]
end
