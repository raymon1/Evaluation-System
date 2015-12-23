class PagesController < ApplicationController

	def login
		
	end


	def home
		user = find_user params[:email_entered],params[:password_entered]
    @username = params[:email_entered]
    @pass_zeft = params[:password_entered]
	    if (@role == "student")
	      sign_in user    
	      redirect_to '/student'
	    elsif (@role == "instructor")
	      sign_in user
	   #   redirect_to '/users/index'  
	    end
	end


 private
    def find_user (email,password)
      if user = User.find_by_email(email) and user.valid_password?(password)
      	 if (Student.find_by_student_id(user.college_id))
      	 	 @role = "student"
      	 elsif (Instructor.find_by_instructor_id(user.college_id))
      	 	 @role = "instructor"
      	 else
      	 	 @role = "admin"
      	 end
      else
      		 @role = "none"
      end	   
        user
    end
end
