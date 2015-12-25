class QuizzesController < ApplicationController

	def show 
		render template: "/forms/quiz"
	end

	def create
		
	end

	def add
		respond_to do |format|               
    		format.js {render "forms/add"}
  		end 
	end

	def add_mcq
		  respond_to do |format|               
    		format.js {render "/forms/make_question/add_mcq"}
  		end 
	end

	def add_tf
		  respond_to do |format|               
    		format.js {render "/forms/make_question/add_tf"}
  		end 

		
	end

	def add_essay
		respond_to do |format|               
    		format.js {render "/forms/make_question/add_essay"}
  		end 
	end


end
