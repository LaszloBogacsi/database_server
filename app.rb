require 'sinatra/base'
require './model/store.rb'

class DbServer < Sinatra::Base
  set :port, 4000

  before do
    @store = Store.return
  end

  get '/' do
    @store = Store.init
    redirect '/set'
  end

  get '/set' do
    Store.create(params)
    "You saved: #{params}"
  end

  get '/get' do
    key = params[:key]
    result = Store.find(key)


    "#{result}"
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
