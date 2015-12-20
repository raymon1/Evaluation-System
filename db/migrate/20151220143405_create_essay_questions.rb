class CreateEssayQuestions < ActiveRecord::Migration
  def change
       	execute "CREATE TABLE essay_questions(							 	\
   	    essayID				INTEGER											,\
   	    answer				TEXT											,\
    	PRIMARY KEY (essayID)												 ,\
    	FOREIGN kEY (essayID) REFERENCES questions(questionID) 				\
    	);"
  end
end
