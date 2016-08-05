require 'sinatra'
require 'sinatra/reloader'
require 'pony'
require './env'

enable :sessions
use Rack::MethodOverride

# SIMPLE AUTHENTICATION
helpers do
    def protected!
        return if authorized?
        headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
        halt 401, "Not authorized\n"
    end

    def authorized?
        @auth ||= Rack::Auth::Basic::Request.new(request.env)
        @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == %w(admin admin)
    end
end

get '/free' do
    'This is public content'
end

get '/special' do
    protected!
    'This is private content'
end

get '/' do
    session[:count] = session[:count].to_i + 1
    erb :index, layout: :layout
end

post '/' do
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    session[:language] = params[:language]
    session[:color] = params[:color]
    puts @first_name, @last_name
    redirect back
end

delete '/remove_bg' do
    session[:color] = nil
    redirect back
end

get '/about' do
    erb :about, layout: :layout
end

get '/contact' do
    erb :contact, layout: :layout
end



post "/contact" do
  # send an email to ourselves with the contents of the form
  puts params
  # Pony.mail(:to => params[:email], :body => params[:message])
  Pony.mail({
    :to => params[:email],
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'rationality6@gmail.com',
      :password             => '',
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    },
    :subject => "Hello #{@name}",
    :body => "#{@message}",
  })
  redirect back
end
