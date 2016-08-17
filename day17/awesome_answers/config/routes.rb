Rails.application.routes.draw do
    root 'welcome#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/home' => 'welcome#index'
    get '/about' => 'welcome#about_me', as: :about_us
    get '/contact' => 'contact#new', as: :new_contact
    new '/contact' => 'contact#create', as: :contact
end
