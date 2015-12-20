class CreateAssignments < ActiveRecord::Migration
  def change
        execute "CREATE TABLE assignments(										 \
   	    assignmentID		INTEGER												,\
    	deadline		TIMESTAMP												,\
    	PRIMARY KEY (assignmentID)												,\
    	FOREIGN kEY (assignmentID) REFERENCES forms(formID) 					\
    	);"
  end
end
