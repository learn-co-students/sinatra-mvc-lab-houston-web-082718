require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    get '/piglatinize' do
        erb :user_input
    end
    
    post '/piglatinize' do
        @sentence = PigLatinizer.new(params[:sentence])

        erb :results
    end
end