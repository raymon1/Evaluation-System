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
	def instructor_quizzes
		forms = current_instructor.forms
		quizzes = []
		forms.each do |f|
			if Quiz.find_by_quiz_id(f.form_id)
				quizzes << Quiz.find_by_quiz_id(f.form_id)
		end
	end
		quizzes
	end

	#instructor_sheets
	def instructor_sheets
		forms = current_instructor.forms
		sheets = []
		forms.each do |f|
		if Sheet.find_by_sheet_id(f.form_id)
			sheets << Sheet.find_by_sheet_id(f.form_id)
		end
	end
		sheets
	end

	#instructor_assignments
	def instructor_assignments
		forms = current_instructor.forms
		assignments = []
		forms.each do |f|
		if Assignment.find_by_assignment_id(f.form_id)
			assignments << Assignment.find_by_assignment_id(f.form_id)
		end
	end
		assignments
	end

	#instructor_feedbacks
	def instructor_feedbacks
			forms = current_instructor.forms
			feedbacks = []
			forms.each do |f|
			if Feedback.find_by_feedback_id(f.form_id)
				feedbacks << Feedback.find_by_feedback_id(f.form_id)
			end
			end
						feedbacks

	end

end
