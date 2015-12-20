class CreateAdmins < ActiveRecord::Migration
  def change
       execute "CREATE TABLE admins(								 \
    	adminID			INTEGER										,\

    	PRIMARY KEY(adminID)										,\
    	FOREIGN kEY (adminID) REFERENCES users(collegeID) 			 \
    	);"
  end
end
