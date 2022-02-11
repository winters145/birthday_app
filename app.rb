require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday'
require 'date'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  erb :index
end

get '/birthday' do
  $birthday = Birthday.new(params[:name], params[:day], params[:month])
  @birthday = $birthday
  # @name = params[:name]
  # @day = params[:day]
  # @month = params[:month]
  # @birthday = "#{@birthday_1.month}/#{@birthday_1.day}"
  erb :birthday
end




end