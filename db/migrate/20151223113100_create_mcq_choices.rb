class CreateMcqChoices < ActiveRecord::Migration
  def change
  	   execute "CREATE TABLE mcq_choices(								\
   	    mcq_id		INTEGER  NOT NULL 										,\
   	    choice				TEXT NOT NULL											,\
    	PRIMARY KEY (mcq_id,choice)												,\
    	FOREIGN KEY (mcq_id)	REFERENCES	mcqs(mcq_id)				\
    	);"
  end
end