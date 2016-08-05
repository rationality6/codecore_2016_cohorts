require 'sinatra'
require 'sinatra/reloader'

def bill_splitter(amount, tax, tip, people)
    (amount + (tip * amount / 100) + (tax * amount / 100)) / people
end

get '/' do
    erb :index
end

post '/' do
    amount = params[:amount].to_f
    tax = params[:tax].to_f
    tip = params[:tip].to_f
    people = params[:people].to_i

    session[:result] = bill_splitter(amount, tax, tip, people).to_f

    puts params

    erb :index
end
