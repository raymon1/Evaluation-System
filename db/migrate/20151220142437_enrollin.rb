class Enrollin < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE enrollins(						 \
    	courseID		INTEGER									,\
    	studentID		INTEGER					   				,\
    	semester		VARCHAR(20)			NOT NULL			,\
    	PRIMARY KEY (studentID,courseID)						,\
    	FOREIGN kEY (studentID) REFERENCES students(studentID) 	,\
    	FOREIGN kEY (courseID) REFERENCES courses(code) 		 \
    	);"
  end
end
