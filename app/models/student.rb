class Student < ActiveRecord::Base

	has_many :enrollins
	has_many :courses, through: :enrollins

	has_many :answers
	has_many :questions , through: :answers

	has_many :student_take_forms
	has_many :forms, through: :student_take_forms

	has_one :user , foreign_key: "college_id"


end
