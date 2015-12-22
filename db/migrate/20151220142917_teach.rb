class Teach < ActiveRecord::Migration
  def change
   	    execute "CREATE TABLE teaches(										 \
    	course_id		VARCHAR(10)											,\
    	instructor_id	INTEGER					   							,\
    	PRIMARY KEY (instructor_id,course_id)									,\
    	FOREIGN kEY (instructor_id) REFERENCES instructors(instructor_id) 	,\
    	FOREIGN kEY (course_id) REFERENCES courses(code) 		 			 \
    	);"
  end
end
