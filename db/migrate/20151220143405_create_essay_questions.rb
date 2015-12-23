class CreateEssayQuestions < ActiveRecord::Migration
  def change
       	execute "CREATE TABLE essay_questions(							 	\
   	    essay_id			INTEGER											,\
   	    answer				TEXT											,\
    	PRIMARY KEY (essay_id)												 ,\
    	FOREIGN kEY (essay_id) REFERENCES questions(question_id) 				\
    	);"
  end
end
