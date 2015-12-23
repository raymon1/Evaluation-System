class PagesController < ApplicationController

	def login
		
	end


	def home
		role = find_user params[:email_entered],params[:password_entered]

	    if (role == "student")
	      redirect_to '/student'
	    elsif (role == "instructor")
	      redirect_to '/instructor/home'  
	    end
	end

  def end
    sign_out current_user
  end

 private
    def find_user (email,password)
      if user = User.find_by_email(email) and user.valid_password?(password)
         if (Student.find_by_student_id(user.college_id))
          role = "student"
         elsif (Instructor.find_by_instructor_id(user.college_id))
          role = "instructor"
         else
          role = "admin"
         end
        sign_in user    
      else
          role = "none"
      end    
        role
    end

end
