require 'sinatra/base'
require './lib/birthday_greeter'

class BirthdayApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/' do
    @name = params[:name]
    @day = params[:day].to_i
    @month = params[:month].to_i
    begin
      @str = BirthdayGreeter.new(@name, @day, @month).print_str
      erb(:result)
    rescue ArgumentError
      redirect '/error'
    end
  end

  get '/error' do
    @error = true
    erb(:index)
  end

  run! if app_file == $0
end
