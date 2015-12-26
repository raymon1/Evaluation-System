module ApplicationHelper

	def current_instructor
		instructor = Instructor.find_by_instructor_id(current_user.college_id) 
		instructor
	end


	def current_student
		student = Student.find_by_student_id(current_user.college_id)
		student
	end

	# instructor_ quizzes
	def instructor_quizzes course
sql = "SELECT f.title, f.course_id ,f.form_id FROM forms AS f , quizzes AS q
WHERE f.course_id = '#{course}' AND f.form_id = q.quiz_id AND f.instructor_id = "+current_instructor.instructor_id.to_s+";"
		output = ActiveRecord::Base.connection.execute(sql)
		output.to_a
	end

	#instructor_sheets
	def instructor_sheets course
	sql = "SELECT  f.title, f.course_id ,f.form_id FROM forms AS f , sheets AS sh
WHERE f.course_id = '#{course}'  AND f.form_id = sh.sheet_id AND f.instructor_id = "+current_instructor.instructor_id.to_s
output = ActiveRecord::Base.connection.execute(sql)
		output.to_a	
	end

	#instructor_assignments
	def instructor_assignments course
	sql = "SELECT  f.title, f.course_id ,f.form_id FROM forms AS f , assignments AS a
WHERE f.course_id = '#{course}'  AND f.form_id = a.assignment_id AND f.instructor_id = "+current_instructor.instructor_id.to_s
output = ActiveRecord::Base.connection.execute(sql)
		output.to_a
			end

	#instructor_feedbacks
	def instructor_feedbacks course
		sql = "SELECT  f.title, f.course_id ,f.form_id FROM forms AS f , feedbacks AS fb
WHERE f.course_id = '#{course}' AND f.form_id = fb.feedback_id AND f.instructor_id = "+current_instructor.instructor_id.to_s
output = ActiveRecord::Base.connection.execute(sql)
		output.to_a
			end


	def instructor_courses
		sql = "SELECT code FROM courses AS c , teaches AS t
	WHERE t.instructor_id = "+ current_instructor.instructor_id.to_s+ " AND c.code = t.course_id ;"
	output = ActiveRecord::Base.connection.execute(sql)
		output.to_a
	end


end


