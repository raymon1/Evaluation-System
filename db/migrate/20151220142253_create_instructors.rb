class CreateInstructors < ActiveRecord::Migration
  def change
        execute "CREATE TABLE instructors(						 \
    	instructorID	INTEGER									,\
    	major			VARCHAR(100) 							,\

    	PRIMARY KEY (instructorID)								,\
    	FOREIGN kEY (instructorID) REFERENCES users(collegeID)   \

    	);"
  end
end
