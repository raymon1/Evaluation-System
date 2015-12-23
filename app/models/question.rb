class Question < ActiveRecord::Base

	has_many :answers
	has_many :students, through: :answers

	belongs_to :form


	has_many :mcqs
	has_many :numerical_questions
	has_many :tfs
	has_many :essays

	
	

end
