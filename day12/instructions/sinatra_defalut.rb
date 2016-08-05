require 'sinatra'
require 'sinatra/reloader'
require 'faker'

set :port, 8000

get '/' do
    @where1 = true
    @name = params['name']
    @age = params['age']
    erb(:index, layout: :layout)
end

get '/contact' do
    @where2 = true
    erb(:contact, layout: :layout)
end

post '/contact' do
    @where2 = true
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    erb(:contact, layout: :layout)
end

get '/faker' do
    @where3 = true
    erb(:faker, layout: :layout)
end

get '/converter' do
    @where4 = true
    erb(:converter, layout: :layout)
end

post '/converter' do
    puts @temp_f
    @temp_f = params['temp_f']
    @temp_c = (@temp_f.to_f - 32) / 1.8
    erb(:converter, layout: :layout)
end

def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def time(x, y)
    x * y
end

def divided(x, y)
    x / y
end

get '/calculator' do
    @where5 = true
    erb(:calculator, layout: :layout)
end

post '/calculator' do
    @where5 = true

    @add_first = params[:add_first].to_i
    @add_second = params[:add_second].to_i
    @add_result = add(@add_first, @add_second)

    @sub_first = params[:sub_first].to_i
    @sub_second = params[:sub_second].to_i
    @sub_result = subtract(@sub_first, @sub_second)

    @time_first = params[:time_first].to_i
    @time_second = params[:time_second].to_i
    @time_result = time(@time_first, @time_second)

    @div_first = params[:div_first].to_i
    @div_second = params[:div_second].to_i
    @div_result = divided(@div_first, @div_second)
    erb(:calculator, layout: :layout)
end
