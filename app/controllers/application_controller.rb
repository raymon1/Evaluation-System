class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

private
	def after_sign_in_path_for(user)
	   if (Student.find_by_student_id(user.college_id))
	   		return '/student'
	   else
	   		return '/instructor/home' 	      
	    end
	end


	def after_sign_out_path_for(user)
	  return '/users/sign_in'
	end

 # private
 #    def find_user (email,password)
 #      if user = User.find_by_email(email) and user.valid_password?(password)
 #         if (Student.find_by_student_id(user.college_id))
 #          role = "student"
 #         elsif (Instructor.find_by_instructor_id(user.college_id))
 #          role = "instructor"
 #         else
 #          role = "admin"
 #         end
 #        sign_in user    
 #      else
 #          role = "none"
 #      end    
 #        role
 #    end


end
