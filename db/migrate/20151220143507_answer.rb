class Answer < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE answers(										 	\
   	    studentID				INTEGER											,\
   	    questionID				INTEGER											,\
    	PRIMARY KEY (studentID,questionID)										,\
    	FOREIGN kEY (studentID) REFERENCES students(studentID) 					,\
    	FOREIGN kEY (questionID) REFERENCES questions(questionID) 				\
    	);"
  end
end
