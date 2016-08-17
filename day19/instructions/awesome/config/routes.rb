Rails.application.routes.draw do
    root 'questions#index'

    # get '/questions/new' => 'questions#new', as: :new_question
    # post '/questions'    => 'questions#create', as: :questions
    # get '/questions/:id' => 'questions#show',   as: :question
    # get '/questions'     => 'questions#index'
    # get '/questions/:id/edit' => 'questions#new', as: :edit_question
    # patch '/questions/:id' => 'questions#update'
    # delete '/questions/:id' => 'questions#destroy'

    resources :questions


    resources :products
    get "/products/page/:page" => "products#index", as: :products_page
end
