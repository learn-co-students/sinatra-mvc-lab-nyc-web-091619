require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @to_latinize = PigLatinizer.new(params[:user_phrase])
        erb :piglatinized
    end
end