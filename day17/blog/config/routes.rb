Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about' => 'home#about', as: :about
  get '/admin/questions' => 'admin/questions#index'
  delete '/questions/:id' => 'admin/questions#destroy'
  get '/questions/:id/edit' => 'admin/questions#edit'
  get '/questions/:id/' => 'admin/questions#show'
  post '/questions/:id/comments' => 'questions#create'
  get '/faq' => 'questions#faq'
end
