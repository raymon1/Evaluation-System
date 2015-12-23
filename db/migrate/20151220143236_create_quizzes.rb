class CreateQuizzes < ActiveRecord::Migration
  def change
      	execute "CREATE TABLE quizzes(										 \
   	    quiz_id			INTEGER												,\
    	duration		REAL												,\
    	quiz_mark		REAL					   							,\
    	avg_mark			REAL												,\
    	publish_date		TIMESTAMP											,\
    	PRIMARY KEY (quiz_id)												,\
    	FOREIGN kEY (quiz_id) REFERENCES forms(form_id) 						\
    	);"
  end
end
