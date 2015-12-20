class CreateForms < ActiveRecord::Migration
  def change
   	    execute "CREATE TABLE forms(										 \
   	    formID			INTEGER												,\
    	courseID		VARCHAR(10)												,\
    	instructorID	INTEGER					   							,\
    	title			VARCHAR(100)										,\
    	no0fQuestions	INTEGER												,\
    	timeAndDate		TIMESTAMP											,\
    	PRIMARY KEY (formID)												,\
    	FOREIGN kEY (instructorID) REFERENCES instructors(instructorID) 	,\
    	FOREIGN kEY (courseID) REFERENCES courses(code) 		 			,\
    	CHECK(no0fQuestions > 0)											 \
    	);"
  end
end
