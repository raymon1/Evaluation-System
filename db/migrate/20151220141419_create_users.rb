class CreateUsers < ActiveRecord::Migration
  def change
    execute "CREATE TABLE users( 									 \
    	collegeID		INTEGER										,\
    	dateOfBirth		DATE 				         				,\
    	gender			VARCHAR(7)		           DEFAULT 'male'	,\
    	image			VARCHAR(1000)								,\
    	nationalID		VARCHAR(20)			UNIQUE					,\
    	address			VARCHAR(1000)		          				,\
    	firstName		VARCHAR(30)			          				,\
    	middleName		VARCHAR(30)			         				,\
    	lastName		VARCHAR(30)			           		 		,\
    	PRIMARY KEY(collegeID)										,\
    	CHECK (collegeID > 0)										 \
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

