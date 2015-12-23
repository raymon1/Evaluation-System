class CreateEnrollins < ActiveRecord::Migration
  def change
  	 execute "CREATE TABLE enrollins(						           \
    	course_id		VARCHAR(10)									                    ,\
    	student_id		INTEGER					   				                  ,\
    	semester		VARCHAR(20)			 			              ,\
    	PRIMARY KEY (student_id,course_id)						            ,\
    	FOREIGN kEY (student_id) REFERENCES students(student_id) 	,\
    	FOREIGN kEY (course_id) REFERENCES courses(code) 		      \
    	);"
  end
end
