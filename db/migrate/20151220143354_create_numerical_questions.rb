class CreateNumericalQuestions < ActiveRecord::Migration
  def change
        execute "CREATE TABLE numerical_questions(										 \
   	    numerical_question_id				INTEGER											,\
   	    answer							REAL											,\
    	PRIMARY KEY (numerical_question_id)											  	,\
    	FOREIGN kEY (numerical_question_id) REFERENCES questions(question_id) 				 \
    	);"

  end
end
