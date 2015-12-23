class Instructor < ActiveRecord::Base

	has_many :teaches
	has_many :courses, through: :teaches

	has_many :forms

	belongs_to :user


end
