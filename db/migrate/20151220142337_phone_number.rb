class PhoneNumber < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE phone_numbers(				 \
    	collegeID		INTEGER								,\
    	phone			VARCHAR(15)		NOT NULL UNIQUE		,\

    	PRIMARY KEY (collegeID,phone)						,\
    	FOREIGN kEY (collegeID) REFERENCES users(collegeID)  \
    	);"
  end
end
