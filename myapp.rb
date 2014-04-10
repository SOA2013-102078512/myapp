# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end
get '/toSHA2/:input' do
    inputstr = params[:input]
    hashresult= Digest::SHA256.hexdigest inputstr
    "SHA256: #{hashresult}"

  end
