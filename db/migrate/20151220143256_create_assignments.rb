
class CreateAssignments < ActiveRecord::Migration
  def change
        execute "CREATE TABLE assignments(										 \
   	    assignment_id		INTEGER		UNIQUE NOT NULL 								,\
    	deadline		TIMESTAMP		DEFAULT CURRENT_TIMESTAMP									,\
    	PRIMARY KEY (assignment_id)												,\
    	FOREIGN kEY (assignment_id) REFERENCES forms(form_id) 					\
    	);"
  end
end