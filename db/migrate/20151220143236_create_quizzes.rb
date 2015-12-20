class CreateQuizzes < ActiveRecord::Migration
  def change
      	execute "CREATE TABLE quizzes(										 \
   	    quizID			INTEGER												,\
    	duration		REAL												,\
    	quizMark		REAL					   							,\
    	avgMark			REAL												,\
    	publishDate		TIMESTAMP											,\
    	PRIMARY KEY (quizID)												,\
    	FOREIGN kEY (quizID) REFERENCES forms(formID) 						\
    	);"
  end
end
