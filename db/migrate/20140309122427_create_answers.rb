class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :count
      t.integer :question_id
    end
  end
end
