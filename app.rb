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
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @birthday = "#{@month}/#{@day}"
  erb :birthday
end




end