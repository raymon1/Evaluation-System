class CreateNumericalQuestions < ActiveRecord::Migration
  def change
        execute "CREATE TABLE numerical_questions(										 \
   	    numericalQuestionID				INTEGER											,\
   	    answer							REAL											,\
    	PRIMARY KEY (numericalQuestionID)											  	,\
    	FOREIGN kEY (numericalQuestionID) REFERENCES questions(questionID) 				 \
    	);"

  end
end
