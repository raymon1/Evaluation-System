class CreateMcqChoices < ActiveRecord::Migration
  def change
  	   execute "CREATE TABLE mcq_choices(								\
   	    question_id		INTEGER  NOT NULL 										,\
   	    mcq_id			INTEGER	 UNIQUE NOT NULL 										,\
   	    choice				TEXT NOT NULL											,\
    	PRIMARY KEY (mcq_id)												,\
    	FOREIGN KEY (question_id)	REFERENCES	mcqs(mcq_id)				\
    	);"
  end
end