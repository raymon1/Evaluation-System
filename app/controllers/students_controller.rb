class StudentsController < ApplicationController
	#before_action :authenticate_student!
	def show
		user = current_user
		puts "heeeeeeeeeeeeeeeeeeereeeeeeeeeeeeeeeeeeeeeeeeeee"
		puts current_user.college_id
		@student = Student.find_by_student_id(user.college_id)
		#@student = Student.find_by_student_id(1) 
		#@name = User.find_by_college_id(@student.student_id).first_name
		@name = user.first_name
		enrollins = Enrollin.where(student_id: @student.student_id)
		@courses = []
		enrollins.each do |e|
			@courses << Course.find_by_code(e.course_id) 
		end
	end
end
