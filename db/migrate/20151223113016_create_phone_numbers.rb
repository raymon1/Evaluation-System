class CreatePhoneNumbers < ActiveRecord::Migration
  def change
  	    execute "CREATE TABLE phone_numbers(				 \
    	college_id		INTEGER		UNIQUE NOT NULL						,\
    	phone			VARCHAR(15)		 UNIQUE		,\

    	PRIMARY KEY (college_id,phone)						,\
    	FOREIGN kEY (college_id) REFERENCES users(college_id)  \
    	);"
  end
end
