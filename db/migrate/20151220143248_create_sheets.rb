
class CreateSheets < ActiveRecord::Migration
  def change
        execute "CREATE TABLE sheets(										 \
   	    sheet_id			INTEGER		UNIQUE NOT NULL 									,\
    	sheet_number		INTEGER		DEFAULT 00										,\
    	PRIMARY KEY (sheet_id)												,\
    	FOREIGN kEY (sheet_id) REFERENCES forms(form_id) 						\
    	);"
  end
end
