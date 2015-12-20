class CreateSheets < ActiveRecord::Migration
  def change
        execute "CREATE TABLE sheets(										 \
   	    sheetID			INTEGER												,\
    	sheetNo			INTEGER												,\
    	PRIMARY KEY (sheetID)												,\
    	FOREIGN kEY (sheetID) REFERENCES forms(formID) 						\
    	);"
  end
end
