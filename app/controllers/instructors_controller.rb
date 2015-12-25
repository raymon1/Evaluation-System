class InstructorsController < ApplicationController

	include ApplicationHelper


	before_filter :authenticate_user!

	def home
		
		@course = current_instructor.courses.first
	end


	def course_change
		c = params[:course_id]

		
	end

end