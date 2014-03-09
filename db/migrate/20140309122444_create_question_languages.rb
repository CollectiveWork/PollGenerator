class CreateQuestionLanguages < ActiveRecord::Migration
  def change
    create_table :question_languages do |t|
      t.integer :question_id
      t.string :text
      t.string :language_name
    end
  end
end
