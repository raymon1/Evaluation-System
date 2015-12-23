class Form < ActiveRecord::Base

	belongs_to :course
	belongs_to :instructor

	has_many :feedbacks
	has_many :quizzes
	has_many :sheets
	has_many :assignments

	has_many :questions


	has_many :student_take_forms
	has_many :students, through: :student_take_forms

	


end
