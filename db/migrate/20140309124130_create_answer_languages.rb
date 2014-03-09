class CreateAnswerLanguages < ActiveRecord::Migration
  def change
    create_table :answer_languages do |t|
    	t.integer :answer_id
    	t.string :text
    	t.string :language_name
    end
  end
end
