Rails.application.routes.draw do
    root 'home#home'
    get 'about' => 'home#about'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
