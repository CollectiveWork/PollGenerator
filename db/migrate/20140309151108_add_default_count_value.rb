class AddDefaultCountValue < ActiveRecord::Migration
  def up
    change_column :questions, :total_views, :integer, :default => 0
    change_column :answers, :count, :integer, :default => 0
	end

	def down
    change_column :questions, :total_views, :integer
    change_column :answers, :count, :integer
	end
end
