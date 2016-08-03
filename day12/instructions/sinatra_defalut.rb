require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

get '/hi' do
    # erb(:hi,{layout: :layout})
    @name = params["name"]
    erb(:index, layout: :layout)
end

get '/' do
    # erb(:hi,{layout: :layout})
    erb(:index, layout: :layout)
end
