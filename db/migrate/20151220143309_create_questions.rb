class CreateQuestions < ActiveRecord::Migration
  def change
       execute "CREATE TABLE questions(										  \
   	    questionID			INTEGER											       ,\
   	    formID				INTEGER											          ,\
   	    question 			TEXT											           ,\
   	    mark				INTEGER											          ,\
   	    explanation			TEXT											         ,\
   	    difficulty			INTEGER										      	,\
   	    hint				TEXT											             ,\
   	    bonus				BOOLEAN										            	,\
   	    hintMark			INTEGER											         ,\
    	PRIMARY KEY (questionID)											          ,\
    	FOREIGN kEY (formID) REFERENCES forms(formID) 						 ,\
    	CHECK(mark > 0)											                       \
    	);"
  end
end
