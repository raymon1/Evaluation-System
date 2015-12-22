class CreateAssignments < ActiveRecord::Migration
  def change
        execute "CREATE TABLE assignments(										 \
   	    assignment_id		INTEGER												,\
    	deadline		TIMESTAMP												,\
    	PRIMARY KEY (assignment_id)												,\
    	FOREIGN kEY (assignment_id) REFERENCES forms(form_id) 					\
    	);"
  end
end
