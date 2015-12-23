class CreateForms < ActiveRecord::Migration
  def change
   	  execute "CREATE TABLE forms(										          \
   	  form_id			              INTEGER												,\
    	course_id		            VARCHAR(10)												           ,\
    	instructor_id	         INTEGER					   							           ,\
    	title			               VARCHAR(100)										               ,\
    	no_of_questions	       INTEGER												            ,\
    	creation_time_date		   TIMESTAMP										      	,\
    	PRIMARY KEY (form_id)												           ,\
    	FOREIGN kEY (instructor_id) REFERENCES instructors(instructor_id) 	,\
    	FOREIGN kEY (course_id) REFERENCES courses(code) 		 			,\
    	CHECK(no_of_questions > 0)											 \
    	);"
  end
end
