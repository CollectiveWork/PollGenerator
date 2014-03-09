class AnswerLanguage < ActiveRecord::Base
	belongs_to :answer

	# def get_count
	# 	Answers.find(answer_id).count
	# end
end
