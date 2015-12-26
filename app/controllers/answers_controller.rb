class AnswersController < ApplicationController
	before_filter :authenticate_user!

	def create
		puts params
		#st_id = current_user.college_id
		st_id = current_user.college_id

		form_id = params[:form_id]
		mark = 0
		params.each do |q, a|
			
			if q =="controller" || q == "action" || q=="form_id"
				next
			end
			Answer.create(student_id: st_id, question_id: q.to_i, student_answer: a)

			mark += answer_is_right(q, a)? Question.find(q).mark : 0

			puts "hello from earthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
			puts q
			puts a 
			puts mark
		end

		st_takes_form = StudentTakeForm.create(form_id: form_id, student_id: st_id, student_mark: mark, submission_date: Time.now)

		redirect_to '/student'
	end

private
	
	def answer_is_right(q_id, answer)
		m = Mcq.find_by_mcq_id(q_id)
		if m
			if answer == m.answer
				return true
			end
			return false
		end
		t = Tf.find_by_tf_id(q_id)
		if t
			if (t.answer && answer = "True") || (t.answer == false && answer == "False")
				return true
			end
			return false
		end
		e = EssayQuestion.find_by_essay_id(q_id)
		if e
			if answer == e.answer
				return true
			end
			return false
		end
		n = NumericalQuestion.find_by_numerical_question_id(q_id)
		if n
			if answer.to_f == n.answer
				return true
			end
			return false
		end
	end
end
