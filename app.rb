require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
        piglatinizer = PigLatinizer.new
        @input = params[:user_phrase]
        @result = piglatinizer.piglatinize(@input)

        erb :output
    end

end