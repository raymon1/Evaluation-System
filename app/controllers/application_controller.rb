class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

private
	def after_sign_in_path_for(user)

	sql = "SELECT instructor_id FROM instructors WHERE instructor_id ="+user.college_id.to_s
	output1 = ActiveRecord::Base.connection.execute(sql)
	sql = "SELECT student_id FROM students WHERE student_id ="+user.college_id.to_s
	output2 = ActiveRecord::Base.connection.execute(sql)

	   if (output1.to_a[0].nil?)
	   		return '/student'	  
	   		puts "======================================================="    
	   elsif (output2.to_a[0].nil?)
			return '/instructor/home' 
			puts "--------------------------------------------------------"
	    end
	end


	def after_sign_out_path_for(user)
	  return '/users/sign_in'
	end
end
