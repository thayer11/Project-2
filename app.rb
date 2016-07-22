class App < Sinatra::Base
require 'json'
set :method_override, true

get '/' do
	erb :home
end

get '/avi/:id' do
	@avalanche = Avalanche.find(params[:id])
	erb :show
end

get '/avi' do
	@avalanches = Avalanche.all
	erb :avi
end

get '/date' do 
	@date = params[:date]
	p @date
	@avalanches = Avalanche.where("date LIKE ?", "%#{@date}%")
	erb :avi
end

get '/avi_back_end' do
	content_type "application/json"
    Avalanche.all.to_json
end

#NEW
get '/form' do
	erb :form
end

# CREATE
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
		redirect ("/avi/#{@avalanche[:id]}")
	else
		erb :edit  
	end
end

put '/avi/:id/update' do
	@avalanche = Avalanche.find(params[:id])
	p "hey"
	p params[:avalanche]
	if @avalanche.update(params[:avalanche])
		@avalanche.save
		redirect ("/avi/#{@avalanche[:id]}")
	else
		erb :edit  
	end
end

#DELETE
delete '/avi/:id' do
	@no_more_avi = Avalanche.find(params[:id])
	@no_more_avi.destroy
	redirect ("/avi")
end

end