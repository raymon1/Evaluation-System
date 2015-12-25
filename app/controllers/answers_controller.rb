class AnswersController < ApplicationController
#	before_filter :authenticate_user!

	def create
		puts params
		#st_id = current_user.college_id
		st_id = 1
		params.each do |q, a|
			if q =="controller" || q == "action"
				next
			end
			if answer = Answer.new(student_id: st_id, question_id: q.to_i, answer: a)
				answer.save
			end
		end
		redirect_to '/student'
	end
end
