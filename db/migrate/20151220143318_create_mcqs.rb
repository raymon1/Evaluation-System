class CreateMcqs < ActiveRecord::Migration
  def change
        execute "CREATE TABLE mcqs(										 	\
   	    mcq_id				INTEGER											,\
   	    answer				TEXT											,\
    	PRIMARY KEY (mcq_id)													,\
    	FOREIGN kEY (mcq_id) REFERENCES questions(question_id) 				\
    	);"
  end
end
