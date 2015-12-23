class CreateSheets < ActiveRecord::Migration
  def change
        execute "CREATE TABLE sheets(										 \
   	    sheet_id			INTEGER												,\
    	sheet_number		INTEGER												,\
    	PRIMARY KEY (sheet_id)												,\
    	FOREIGN kEY (sheet_id) REFERENCES forms(form_id) 						\
    	);"
  end
end
