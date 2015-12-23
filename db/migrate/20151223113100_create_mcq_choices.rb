class CreateMcqChoices < ActiveRecord::Migration
  def change
  	   execute "CREATE TABLE mcq_choices(								\
   	    question_id		INTEGER 										,\
   	    mcq_id			INTEGER											,\
   	    choice				TEXT											,\
    	PRIMARY KEY (mcq_id)												,\
    	FOREIGN KEY (question_id)	REFERENCES	mcqs(mcq_id)				\
    	);"
  end
end