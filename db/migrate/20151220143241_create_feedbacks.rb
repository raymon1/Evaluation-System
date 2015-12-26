class CreateFeedbacks < ActiveRecord::Migration
  def change
        execute "CREATE TABLE feedbacks(										 \
   	    feedback_id			INTEGER		UNIQUE NOT NULL 									,\
    	no_of_times_taken	INTEGER		DEFAULT 0										,\
    	PRIMARY KEY (feedback_id)												,\
    	FOREIGN kEY (feedback_id) REFERENCES forms(form_id) 						 \
    	);"
  end
end

