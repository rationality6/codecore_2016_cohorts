require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

enable :session

get '/' do
    erb(:index, layout: :layout)
end
