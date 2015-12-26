class CreateTeaches < ActiveRecord::Migration
  def change
   	    execute "CREATE TABLE teaches(										 \
    	course_id		VARCHAR(10)	 NOT NULL									,\
    	instructor_id	INTEGER		 NOT NULL		   							,\
    	PRIMARY KEY (instructor_id,course_id)									,\
    	FOREIGN kEY (instructor_id) REFERENCES users(college_id) 	,\
    	FOREIGN kEY (course_id) REFERENCES courses(code) 		 			 \
    	);"
  end
end

