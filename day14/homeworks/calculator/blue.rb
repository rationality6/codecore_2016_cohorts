require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

def operations(x, y, v)
    # puts x,y,v
    if v == '+'
        x + y
    elsif v == '-'
        x - y
    elsif v == '*'
        x * y
    else
        x / y
    end
end

get '/' do
    erb(:index, layout: :layout)
end

post '/' do
    # take infos
    session[:first] = params[:first_num].to_i
    session[:second] = params[:second_num].to_i
    session[:operations] = params[:operations]

    # final operation
    session[:result] = operations(session[:first], session[:second], session[:operations])

    # render
    erb(:index, layout: :layout)
end
