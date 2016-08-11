Rails.application.routes.draw do
    get 'contact/new'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/home' => 'welcome#index'

    # we can use `as:` option to set a path/url helper
    get '/about' => 'welcome#about_me', as: :about_us

    get '/contact' => 'contact#new', as: :new_contact
    post '/contact' => 'contact#create', as: :contact

    # get '/questions/new' => 'questions#new', as: :new_question
    # post '/questions'    => 'questions#create', as: :questions
    # get '/questions/:id' => 'questions#show',   as: :question
    # get '/questions'     => 'questions#index'
    # get '/questions/:id/edit' => 'questions#edit', as: :edit_question
    # patch '/questions/:id' => 'questions#update'
    # delete '/questions/:id' => 'questions#destroy'

    resources :questions

    # This is basically defining: get "/"
    root 'welcome#index'
end
