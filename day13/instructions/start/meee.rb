require 'sinatra'
require 'sinatra/reloader'

get '/' do
    erb :index, layout: :layout
end

get '/hi' do
    erb :index, layout: :layout
end
