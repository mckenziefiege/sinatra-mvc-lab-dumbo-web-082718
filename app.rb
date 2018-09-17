require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    erb :piglatinize
    text_from_user = params[:user_phrase]
    instance  = PigLatinizer.new
    instance.phrase = text_from_user
    @finished = instance.piglatinize(instance.phrase)

  end
end
