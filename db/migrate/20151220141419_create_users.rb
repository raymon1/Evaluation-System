class CreateUsers < ActiveRecord::Migration
  def change
    execute "CREATE TABLE users( 									 \
    	college_id		INTEGER										,\
    	date_of_birth		DATE 				         				,\
    	gender			VARCHAR(7)		           DEFAULT 'male'	,\
    	image			VARCHAR(1000)								,\
    	national_id		VARCHAR(20)			UNIQUE					,\
    	address			VARCHAR(1000)		          				,\
    	first_name		VARCHAR(30)			          				,\
    	middle_name		VARCHAR(30)			         				,\
    	last_name		VARCHAR(30)			           		 		,\
    	PRIMARY KEY(college_id)										,\
    	CHECK (college_id > 0)										 \
    	);"
  end
end


# Missing attributes
# the password
# the email
# other authentication variables


#gender required to be an enum database type
#image extend its characters to 1000
#college ID is a number 

