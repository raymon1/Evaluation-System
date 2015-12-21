class StudentsController < ApplicationController
	#before_action :authenticate_student
	def show
		#@student = current_student
		#@name = Users.where(collegeID: @student.studentID).firstName
		#@courses = Enrollin.where(studentID: @student.studentID)
		@name = "hamada"
		@courses = [{name: "math"}, {name: "physics"}, {name: "chemistry"}, {name: "database"}, {name: "cooking"}]
	end
end
