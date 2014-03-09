class CreatePollers < ActiveRecord::Migration
  def change
    create_table :pollers do |t|
      t.string :ip
      t.integer :answer_id

      t.timestamps
    end
  end
end
