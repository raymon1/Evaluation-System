class PagesController < ApplicationController

	def login
		
	end


	def home
		user = find_user params[:email_entered],params[:password_entered]
	    if (@role == "student")
	      sign_in user    
	      redirect_to '/users/index'
	    elsif (@role == "instructor")
	      sign_in user
	      redirect_to '/users/index'  
	    end
	end


 private
    def find_user (email,password)
      if user = User.find_by_email(email) and User.valid_password?(password)
      	 if (Student.find_by_studentID(user.collegeID))
      	 	 @role = "student"
      	 elsif (Instructor.find_by_instructorID(user.collegeID))
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
