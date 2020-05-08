require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @piggy = pig.piglatinize(params[:user_phrase])
    # @piggy = params[:phrase]
    erb :romanhog
  end

end