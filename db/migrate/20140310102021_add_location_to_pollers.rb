class AddLocationToPollers < ActiveRecord::Migration
  def change
  	add_column :pollers, :location, :string
  end
end
