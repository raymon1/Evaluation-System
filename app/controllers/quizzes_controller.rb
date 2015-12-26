class QuizzesController < ApplicationController
	before_filter :authenticate_user!


	def show 
		render template: "/forms/quiz"
	end

	def create
		puts params
		form = Form.create(course_id: params[:code],
			instructor_id: current_user.college_id,
			title: params["title"], creation_time_date: Time.now)

		dur = params["duration"].to_f
		quiz_mark = params["mark"].to_f
		pub_date = params["publish_date"].to_time

		quiz = Quiz.create(quiz_id: form.form_id, duration: dur, quiz_mark: quiz_mark, publish_date: pub_date)

		
		mcq_count = params[mcq_counter]
		for i in 1..mcq_count
			qmark = params["mcq_question_mark" + i.to_s]
			question = params["mcq_question" + i.to_s]
			choice1 = params["mcq_answer_ch1" + i.to_s]
			choice2 = params["mcq_answer_ch2" + i.to_s]
			hmark = params["mcq_hint_mark" + i.to_s]
			hint = params["mcq_hint" + i.to_s]
			bonus = params["bonus" + i.to_s]==""? false : true
			if params["mcq_answer_ch1" + i.to_s] == "option1"
				answer=choice1
			else
				answer=choice2
			end

			ques = Question.create(form_id: form.form_id, question: question, mark: qmark, hint: hint, hint_mark: hmark, bonus: bonus)
			Mcq.create(mcq_id: ques.question_id, answer: answer)
			McqChoice.create(question_id: ques.question_id, choice: choice1)
			McqChoice.create(question_id: ques.question_id, choice: choice2)
		end





		redirect_to "/instructor/home"
	end

	def add
		respond_to do |format|               
    		format.js {render "forms/add"}
  		end 
	end

	def add_mcq
		if (@mcq_count.nil?)
			@mcq_count = 0
			@mcq = []
		else
			@mcq_count = @mcq_count.next
		end
		@mcq[@mcq_count]={}

		  respond_to do |format|               
    		format.js {render "/forms/make_question/add_mcq"}
  		end 
	end

	def add_tf
		 if (@tf_count.nil?)
		 	@tf_count = 0
		 	@tf = []
		 else
		@tf_count = @tf_count.next
	end
		@tf[@tf_count]={}
		  respond_to do |format|               
    		format.js {render "/forms/make_question/add_tf"}
  		end 

		
	end

	def add_essay
		 if (@essay_count.nil?)
		 	@essay_count = 0
		 	@essay = []
		 else
		@essay_count = @essay_count.next
	end
		@essay[@essay_count]={}
		respond_to do |format|               
    		format.js {render "/forms/make_question/add_essay"}
  		end 
	end


end
