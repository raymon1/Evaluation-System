class StudentsController < ApplicationController
	before_filter :authenticate_user!

	def show
		student = Student.find(current_user.college_id)
		@courses = student.courses
		@name = current_user.first_name
	end
end
