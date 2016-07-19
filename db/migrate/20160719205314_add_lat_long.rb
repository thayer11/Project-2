class AddLatLong < ActiveRecord::Migration
  def change
  	add_column :avalanches, :langitude, :integer
  	add_column :avalanches, :longitude, :integer
		end
	end
