class App < Sinatra::Base
require 'json'
set :method_override, true
# General route actions
get '/' do
	erb :home
end

get '/form' do
	erb :form
end

get '/index' do
	erb :index
end

get '/avi' do
	@avalanches = Avalanche.all
	erb :avi
end

get '/avi_back_end' do
	content_type "application/json"
    Avalanche.all.to_json
end

# get '/avi/:date' do
# 	Avalanche.find(params[:date]).to_json
# end

# get '/avi/:state' do 
# 	Avalanche.find(params[region]).to_json
# end

# get '/avi/:state' do
# 	Avalanche.find(params[:state]).to_json
# end

 get '/avi/:id' do
	Avalanche.find(params[:id]).to_json
end 

# create
 post '/avi' do
   @avalanche = Avalanche.new(params[:avalanche])
   if @avalanche.save
     redirect("/")
   else
     erb :form 
   end
 end



#UPDATE
put '/avi/:id' do
	@current_avalanche = Avalanche.find(params[:id])
	@create_avalanche = (params[:avalanche])
	if @current_avalanche.update_attributes(@create_avalanche)
		redirect ("/avi")
	else
		erb :edit 
	end
end

delete '/avi/:id' do
	@no_more_avi = Avalanche.find(params[:id])
	@no_more_avi.destroy
end

end