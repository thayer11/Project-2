class App < Sinatra::Base

# General route actions
  get '/index' do
    Avalanche.all.to_json
  end

end
