class Answer < ActiveRecord::Base
	has_many :answer_languages
	belongs_to :question
end
