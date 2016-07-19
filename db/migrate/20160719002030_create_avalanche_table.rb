class CreateAvalancheTable < ActiveRecord::Migration
  def change
  create_table :avalanches do |t| #t stands for table
      t.string :date
      t.string :state #add a name attribute of type string to the table
      t.string :region #also add a photo_url attribute of type string
      t.string :type
      t.string :size_crown
      t.string :size_runout
      t.string :temperature
      t.string :temperature_high_past_24hrs
      t.string :temperature_low_past_24hrs 
      t.string :percipitation
      t.string :wind_speed
      t.string :wind_direction
      t.string :aspect
      t.string :elevation
      t.string :snowpack 
      t.text :area_description
      t.text :route_description
      t.string :trigger 
      t.string :did_you_see_any_avalanches 
      t.string :did_you_trigger_any_avalanches
      t.string :buried
      t.string :caught
      t.string :dead 
      t.string :photo_url
      t.timestamps null:true #this will add timestamps for time created and time updated automagically!
    end
  end
end
