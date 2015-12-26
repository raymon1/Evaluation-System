class StudentsController < ApplicationController
	before_filter :authenticate_user!

	def show
		#student = Student.find(current_user.college_id)
		#@courses = student.courses
		#@name = current_user.first_name

		sql = "SELECT name, code FROM courses AS c, enrollins as e WHERE e.student_id = #{current_user.college_id} AND e.course_id = c.code"
		@courses = ActiveRecord::Base.connection.execute(sql)
		@courses.to_a
		
	end
end
