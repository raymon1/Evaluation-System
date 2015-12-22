class CreateFeedbacks < ActiveRecord::Migration
  def change
        execute "CREATE TABLE feedbacks(										 \
   	    feedback_id			INTEGER												,\
    	no_of_times_taken	INTEGER												,\
    	PRIMARY KEY (feedback_id)												,\
    	FOREIGN kEY (feedback_id) REFERENCES forms(form_id) 						 \
    	);"
  end
end
