class CreateInstructors < ActiveRecord::Migration
  def change
        execute "CREATE TABLE instructors(						 \
    	instructor_id	INTEGER									,\
    	major			VARCHAR(100) 							,\

    	PRIMARY KEY (instructor_id)								,\
    	FOREIGN kEY (instructor_id) REFERENCES users(college_id)   \

    	);"
  end
end
