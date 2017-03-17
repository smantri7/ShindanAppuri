require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/diary'
require './models/motivation'
require './models/registration'

get '/' do
	@title = "ようこそ、診断医者でござる！"
	erb :main
end

get '/registration' do
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

post '/submit' do
	@model = Registration.new(params[:model])
	if @model.save
		redirect '/models'
	else
		"Sorry there was an error."
	end
end

post '/enter' do
	@moti = Motivation.new(params[:moti])
	if @moti.save
		redirect '/models'
	else
		"Sorry there was an error"
	end
end

post '/write' do
	@diary = Diary.new(params[:diary])
	if @diary.save
		redirect '/models'
	else
		"Sorry there was an error"
	end
end

get '/models' do
	@registrations = Registration.all
	@motivations = Motivation.all
	@diaries = Diary.all
	erb :models
end

