class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :total_views

      t.timestamps
    end
  end
end
