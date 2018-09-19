require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    # Show that form using a GET request at /.
    get '/' do
        erb :user_input
    end

    # Create a POST method in your controller (app.rb) to receive your form's params.
    post '/piglatinize' do
        # In your application controller, create an instance of the PigLatinizer class 
        # to convert your user input to Pig Latin.
        words = PigLatinizer.new
        @pig_latin_output = words.piglatinize(params[:user_phrase])

        erb :pig_latin_output
    end
end