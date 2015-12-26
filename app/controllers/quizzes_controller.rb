class QuizzesController < ApplicationController
	before_filter :authenticate_user!


	def show 
		render template: "/forms/quiz",locals: {course: params[:c]}
	end

	def create
		puts "//////////////////////////////////////////////////////"
		puts params
		# form = Form.create(course_id: params["course_id"],
		# 	instructor_id: current_user.college_id,
		# 	title: params["title"], creation_time_date: Time.now)
		sql = "INSERT INTO forms(course_id,instructor_id,title)VALUES(
			'#{params["course_id"]}',"+current_user.college_id.to_s+",'#{params["title"]}')RETURNING form_id;"
		output1 = ActiveRecord::Base.connection.execute(sql)
		output1 = output1.to_a
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		output1 = output1[0]["form_id"]
		puts output1.class

		dur = params["duration"].to_f
		quiz_mark = params["mark"].to_f
		pub_date = params["publish_date"].to_time

	#	quiz = Quiz.create(quiz_id: output1.to_i, duration: dur, quiz_mark: quiz_mark, publish_date: pub_date)
		sql = "INSERT INTO quizzes(quiz_id,duration,quiz_mark)VALUES(
			"+output1+","+dur.to_s+","+quiz_mark.to_s+");"
		output2 = ActiveRecord::Base.connection.execute(sql)
		output2 = output2.to_a
		puts output2


		mcq_count = params["mcq_counter"]
		mcq_count = mcq_count.to_i
		for i in 1..mcq_count
			qmark = params["mcq_question_mark" + i.to_s]
			question = params["mcq_question" + i.to_s]
			choice1 = params["mcq_choice1_" + i.to_s]
			choice2 = params["mcq_choice2_" + i.to_s]
			hmark = params["mcq_hint_mark" + i.to_s]
			hint = params["mcq_hint" + i.to_s]
			bonus = params["bonus" + i.to_s]==""? false : true

			if params["mcq_answer_ch1" + i.to_s] == "option1"
				answer=choice1
			else
				answer=choice2
			end

	#ques = Question.create(form_id: output1.to_i, question: question, mark: qmark, hint: hint, hint_mark: hmark, bonus: bonus)
			sql = "INSERT INTO questions(form_id,question,mark,hint,hint_mark,bonus)VALUES(
				"+output1+",'#{question}',"+qmark.to_s+",'#{hint}',"+hmark.to_s+","+bonus.to_s+")RETURNING question_id;"
		output3 = ActiveRecord::Base.connection.execute(sql)
		output3 = output3[0]["question_id"]
		puts output3

		 # Mcq.create(mcq_id: output3.to_i, answer: answer)
		 sql = "INSERT INTO mcqs(mcq_id,answer)VALUES(
			"+output3+",'#{answer}');"
		output4 = ActiveRecord::Base.connection.execute(sql)
		output4 = output4.to_a
		puts output4

	# McqChoice.create(mcq_id: output3.to_i, choice: choice1)
		sql = "INSERT INTO mcq_choices(mcq_id,choice)VALUES(
			"+output3+",'#{choice1}');"
		output5 = ActiveRecord::Base.connection.execute(sql)
		output5 = output5.to_a
		puts output5

		# McqChoice.create(mcq_id: ques.question_id,  choice: choice2)
				sql = "INSERT INTO mcq_choices(mcq_id,choice)VALUES(
			"+output3+",'#{choice2}');"
		output6 = ActiveRecord::Base.connection.execute(sql)
		output6 = output6.to_a
		puts output6
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


private
    def form_params
        params.require(:form).permit(:form_id, :instructor_id, :course_id, :title, :no_of_questions)
    end

end
