require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        new_phrase = PigLatinizer.new
        @piggy = new_phrase.piglatinize(params[:string])
        erb :output
    end


end