class App < Sinatra::Base

# General route actions
  get '/' do
    erb :home
  end

end
