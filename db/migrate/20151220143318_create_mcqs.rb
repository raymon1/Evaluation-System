class CreateMcqs < ActiveRecord::Migration
  def change
        execute "CREATE TABLE mcqs(										 	\
   	    mcqID				INTEGER											,\
   	    answer				TEXT											,\
    	PRIMARY KEY (mcqID)													,\
    	FOREIGN kEY (mcqID) REFERENCES questions(questionID) 				,\
    	CHECK(mark > 0)														 \
    	);"
  end
end
