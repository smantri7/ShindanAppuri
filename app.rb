require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/model'

get '/' do
	@title = "ようこそ、診断医者でござる！"
	erb :main
end

get '/registration' do
	@title = "ようこそ、診断医者でござる！"
	erb :registration
end

get '/kawaii' do
	erb :kawaii
end

get '/quote' do
	erb :quote
end

get '/hotline' do
	erb :hotline
end

get '/diary' do
	erb :diary
end