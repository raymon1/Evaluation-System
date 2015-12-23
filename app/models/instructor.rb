class Instructor < ActiveRecord::Base

	has_many :teaches
	has_many :courses, through: :teaches

	has_many :forms

	has_one :user, foreign_key: "college_id"


end
