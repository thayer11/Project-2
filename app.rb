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

get '/avi/:id/edit' do
	@avalanche = Avalanche.find(params[:id])
	erb :edit
end

# get 'avi/:id/update' do
# 	avalanche = Avalanche.find(params[:id])
# 	erb :show
# end

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

 # get '/avi/:id' do
	# Avalanche.find(params[:id]).to_json
 # end 

# create
 post '/avi' do
   @avalanche = Avalanche.new(params[:avalanche])
   p @avalanche
   if @avalanche.save
     redirect("/")
   else
     erb :form 
   end
 end

#EDIT
get '/avi/:id/edit' do
	@avalanche = Avalanche.find(params[:id])
	erb :edit
end

#UPDATE
put '/avi/:id/update' do
	@avalanche = Avalanche.find(params[:id])
	p "hey"
	p params[:avalanche]
	if @avalanche.update(params[:avalanche])
		@avalanche.save
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