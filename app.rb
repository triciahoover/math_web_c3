require 'sinatra'
require_relative 'math.rb'

get '/' do 
	erb :home
end

post '/math' do
	math_type = params[:math_type]
	num1 = params[:num1]
	num2 = params[:num2]
	redirect '/results?math_type=' + math_type + '&num1=' + num1 + '&num2=' + num2
end

get '/results' do
	math_type = params[:math_type]
	num1 = params[:num1]
	num2 = params[:num2]
	erb :results, :locals => {:math_type => math_type, :num1 => num1, :num2 => num2}
end