class Teach < ActiveRecord::Migration
  def change
   	    execute "CREATE TABLE teaches(										 \
    	courseID		INTEGER												,\
    	instructorID	INTEGER					   							,\
    	PRIMARY KEY (instructorID,courseID)									,\
    	FOREIGN kEY (instructorID) REFERENCES instructors(instructorID) 	,\
    	FOREIGN kEY (courseID) REFERENCES courses(code) 		 			 \
    	);"
  end
end
