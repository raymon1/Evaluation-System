class CreateQuestions < ActiveRecord::Migration
  def change
       execute "CREATE TABLE questions(										  \
   	    question_id			INTEGER											       ,\
   	    form_id				INTEGER											          ,\
   	    question 			TEXT											           ,\
   	    mark				INTEGER											          ,\
   	    explanation			TEXT											         ,\
   	    difficulty			INTEGER										      	,\
   	    hint				TEXT											             ,\
   	    bonus				BOOLEAN										            	,\
   	    hint_mark		INTEGER											         ,\
    	PRIMARY KEY (question_id)											          ,\
    	FOREIGN kEY (form_id) REFERENCES forms(form_id) 						 ,\
    	CHECK(mark > 0)											                       \
    	);"
  end
end
