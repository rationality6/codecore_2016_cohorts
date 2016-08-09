require 'sinatra'
require 'sinatra/reloader'

enable :sessions
use Rack::MethodOverride

get '/' do
  erb(:index, {layout: :layout})
end

post '/' do
  session[:title] = params[:title]
  session[:task] = params[:task]
  erb(:list, {layout: :layout})
end

get '/list' do
  erb(:list, {layout: :layout})
end

session = []
session =


post '/list' do
  session[:title] = params[:title]
  session[:task] = params[:task]

  session[:task_hash] = Hash.new unless session[:task_hash]

  session[:task_hash].store(session[:title], session[:task])

  # session[:title_arr] = Array.new unless session[:title_arr]
  # session[:title_arr].push(session[:title])
  #
  # session[:task_arr] = Array.new unless session[:task_arr]
  # session[:task_arr].push(session[:task])

  erb(:list, {layout: :layout})
end

delete '/delete' do
  session[:store].delete params[:delete_task]
  erb :list, layout: :default
end
