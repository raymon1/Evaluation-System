class Teach < ActiveRecord::Migration
  def change
   	    execute "CREATE TABLE teaches(										 \
    	courseID		VARCHAR(10)											,\
    	instructorID	INTEGER					   							,\
    	PRIMARY KEY (instructorID,courseID)									,\
    	FOREIGN kEY (instructorID) REFERENCES instructors(instructorID) 	,\
    	FOREIGN kEY (courseID) REFERENCES courses(code) 		 			 \
    	);"
  end
end
