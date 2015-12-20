class StudentTakeForm < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE student_take_forms(							\
   	    formID				INTEGER											,\
   	    studentID			INTEGER											,\
   	    submissionDate		TIMESTAMP										,\
   	    studentMark			REAL											,\
    	PRIMARY KEY (formID,studentID)										,\
    	FOREIGN kEY (studentID) REFERENCES students(studentID) 				,\
    	FOREIGN kEY (formID) REFERENCES forms(formID) 						,\
    	CHECK(mark > 0)														 \
    	);"
  end
end
