class InstructorsController < ApplicationController

	include ApplicationHelper


	before_filter :authenticate_user!

	def home
		sql = "SELECT name FROM courses AS c , teaches AS t
		WHERE t.instructor_id = " +current_instructor.instructor_id.to_s+" AND c.code = t.course_id
LIMIT 1;"
output = ActiveRecord::Base.connection.execute(sql)
output.to_a
		render template: '/instructors/home', locals: {course: output.to_a[0]["code"]}		
	end

	def course
		c = params[:course]
		render template: '/instructors/home', locals: {course: c}		
	end

end