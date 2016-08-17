require 'sinatra'
require 'sinatra/reloader'

get '/' do
    erb :index
end

post '/' do
    @temperature_in_c = params[:temperature].to_f
    @temperature_in_f = @temperature_in_c * 9 / 5 + 32
    erb :index
end
