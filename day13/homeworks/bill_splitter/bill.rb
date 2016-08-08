require 'sinatra'
require 'sinatra/reloader'

enable :session

def bill_splitter(amount, tax, tip, people)
    (amount + (tip * amount / 100) + (tax * amount / 100)) / people
end

get '/' do
    erb :index
end

post '/' do
    session[:amount] = params[:amount]
    session[:tax] = params[:tax]
    session[:tip] = params[:tip]
    session[:people] = params[:people]

    session[:result] = bill_splitter(session[:amount].to_f, session[:tax].to_f, session[:tip].to_f, session[:people].to_i).to_f

    puts params

    erb :index
end
