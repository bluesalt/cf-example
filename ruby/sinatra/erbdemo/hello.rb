require 'sinatra'
require 'json'

get '/' do
  'hello, world'
end

get '/hello/:name' do
	params[:name]
end

get '/form' do
	erb :form
end

post '/form' do
	"Your said '#{params[:message]}'"
end

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end
