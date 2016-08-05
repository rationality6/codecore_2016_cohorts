require 'sinatra'
require 'sinatra/reloader'

def language(name, lang)
    if lang == 'english'
        "Hello #{name}"
    elsif lang == 'french'
        "Bonjour #{name}"
    elsif lang == 'spanish'
        "Hola #{name}"
    else
        'Welcome.'
    end
end

get '/' do
    erb :index
end

post '/' do
    session[:name] = params[:name]
    lang = params[:lang]
    session[:name_result] = language(session[:name], lang)
    erb :index
end
