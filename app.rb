class App < Sinatra::Base

# General route actions
get '/' do
	erb :home
end

get '/avi' do
    Avalanche.all.to_json
    erb :layout
  end

get '/avi/:date' do
	Avalanche.find(params[:date]).to_json
end

get '/avi/:state' do 
	Avalanche.find(params[region]).to_json
end

get '/avi/:state' do
	Avalanche.find(params[:state]).to_json
end

 get '/avi/:id' do
	Avalanche.find(params[:id]).to_json
end 

#CREATE
post '/avi' do
	@make_avalanche = JSON.parse(request.body.read)
	@new_avalanche = Avalanche.new(@make_avalanche)
	@new_avalanche.save
end

#UPDATE
put '/avi/:id' do
	@current_avalanche = Avalanche.find(params[:id])
	@create_avalanche = JSON.parse(request.body.read)
	@current_avalanche.update_attributes(@create_avalanche)
	@current_avalanche.to_json
end

delete '/avi/:id' do
	@no_more_avi = Avalanche.find(params[:id])
	@no_more_avi.destroy
end

end