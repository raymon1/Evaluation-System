class Course < ActiveRecord::Base

	has_many :enrollins
	has_many :students, through: :enrollins

	has_many :teaches
	has_many :instructors, through: :teaches

	has_many :forms

end
