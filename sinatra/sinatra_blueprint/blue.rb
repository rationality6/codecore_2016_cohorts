require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

get '/' do
    erb(:index, layout: :layout)
end
