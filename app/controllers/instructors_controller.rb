class InstructorsController < ApplicationController


	before_filter :authenticate_user!

	def home
		
		instructor = Instructor.find(current_user.college_id)
		@courses = instructor.courses
	end

end