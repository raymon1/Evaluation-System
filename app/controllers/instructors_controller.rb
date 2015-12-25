class InstructorsController < ApplicationController

	include ApplicationHelper


	before_filter :authenticate_user!

	def home
		render template: '/instructors/home', locals: {course: current_instructor.courses.first.code}		
	end


	def course
		puts "============================================"
		c = params[:course]
		render template: '/instructors/home', locals: {course: c}		
		puts "++++++++++++++++++++++++++++++++++++++++++++"
	end

end