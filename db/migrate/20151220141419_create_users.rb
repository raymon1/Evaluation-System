class CreateUsers < ActiveRecord::Migration
  def change
    execute "CREATE TABLE users( 									 \
    	collegeID		INTEGER										,\
    	dateOfBirth		DATE 				NOT NULL				,\
    	gender			VARCHAR(7)			NOT NULL DEFAULT 'male'	,\
    	image			VARCHAR(1000)								,\
    	nationalID		VARCHAR(20)			UNIQUE					,\
    	address			VARCHAR(1000)		NOT NULL				,\
    	firstName		VARCHAR(30)			NOT NULL				,\
    	middleName		VARCHAR(30)			NOT NULL				,\
    	lastName		VARCHAR(30)			NOT NULL		 		,\
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

