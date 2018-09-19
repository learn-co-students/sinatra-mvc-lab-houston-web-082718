require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

get "/" do
  erb:'user_input'
end

get "/piglatinize" do
  erb:'user_input'
end

post '/piglatinize' do
  @translated = PigLatinizer.new(params[:user_phrase]).text
  erb:'result'
end

end
