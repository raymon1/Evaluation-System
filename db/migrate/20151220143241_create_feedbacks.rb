class CreateFeedbacks < ActiveRecord::Migration
  def change
        execute "CREATE TABLE feedbacks(										 \
   	    feedbackID			INTEGER												,\
    	no_of_times_taken	INTEGER												,\
    	PRIMARY KEY (feedbackID)												,\
    	FOREIGN kEY (feedbackID) REFERENCES forms(formID) 						 \
    	);"
  end
end
