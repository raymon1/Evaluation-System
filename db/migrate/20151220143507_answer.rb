class Answer < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE answers(										 	\
   	    student_id				INTEGER											,\
   	    question_id				INTEGER											,\
    	PRIMARY KEY (student_id,question_id)										,\
    	FOREIGN kEY (student_id) REFERENCES students(student_id) 					,\
    	FOREIGN kEY (question_id) REFERENCES questions(question_id) 				\
    	);"
  end
end
