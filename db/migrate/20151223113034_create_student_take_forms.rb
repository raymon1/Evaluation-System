class CreateStudentTakeForms < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE student_take_forms(							\
   	    form_id				INTEGER											,\
   	    student_id		INTEGER											,\
   	    submission_date		TIMESTAMP										,\
   	    student_mark			REAL											,\
    	PRIMARY KEY (form_id,student_id)										,\
    	FOREIGN kEY (student_id) REFERENCES students(student_id) 				,\
    	FOREIGN kEY (form_id) REFERENCES forms(form_id) 						\
    	);"
  end
end
