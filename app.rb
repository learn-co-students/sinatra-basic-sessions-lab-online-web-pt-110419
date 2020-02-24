require_relative 'config/environment'

class App < Sinatra::Base
	configure do
		enable :sessions
		set :session_secret, "secret" #NEVER SET BY HAND! EXAMPLE ONLY
	 end

	 get '/' do
		erb :index
	 end

	 post '/checkout' do
		session["item"] = params[:item]
		@session = session
		erb :checkout
	 end
end