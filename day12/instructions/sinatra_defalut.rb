require 'faker'
require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

def one_to_hund
    (1..100).to_a
end

get '/hi' do
    # erb(:hi,{layout: :layout})
    @name = params['name']
    @age = params['age']
    @array = one_to_hund
    erb(:index, layout: :layout)
end

post '/contact' do
    puts params
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    # "Hello #{@first_name} #{@last_name}"
    erb(:contact, layout: :layout)
end

get '/contact' do
    @where2 = true
    erb(:contact, layout: :layout)
end

def where(n)
end

get '/' do
    @where1 = true
    # erb(:hi,{layout: :layout})
    erb(:index, layout: :layout)
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

get '/calculator' do
    @where5 = true
    @add_first = params[:add_first].to_i
    @add_second = params[:add_second].to_i
    @add_result = @add_first + @add_second

    @sub_first = params[:sub_first].to_i
    @sub_second = params[:sub_second].to_i
    @sub_result = @sub_first - @sub_second

    @rest_first = params[:rest_first].to_i
    @rest_second = params[:rest_second].to_i
    @rest_result = @rest_first - @rest_second

    @div_first = params[:div_first].to_i
    @div_second = params[:div_second].to_i
    @div_result = @sub_first - @sub_second
    erb(:calculator, layout: :layout)
end

post '/calculator' do
    erb(:calculator, layout: :layout)
end
