class QuizzesController < ApplicationController

	def show 
		render template: "/forms/quiz"
	end

	def create
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
