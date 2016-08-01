Rails.application.routes.draw do
  get 'hello/show'
  match ':controller(/:action(/:id))', via: [:get, :post, :patch]
end
