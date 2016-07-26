Rails.application.routes.draw do
    get 'foo/show'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    match ':controller(/:action(/:id))', via: [:get, :post, :patch]
end
