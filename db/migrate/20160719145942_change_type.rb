class ChangeType < ActiveRecord::Migration
  def change
  change_table :avalanches do |t|
  	t.rename :type, :avalanche_type
  	end
  end
end
