require 'sinatra/base'

class DbServer < Sinatra::Base
  set :port, 4000
  get '/' do
    'Hello DbServer!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
