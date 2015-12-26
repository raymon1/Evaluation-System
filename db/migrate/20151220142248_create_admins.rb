class CreateAdmins < ActiveRecord::Migration
 def change
       execute "CREATE TABLE admins(								\
    	admin_id			INTEGER			UNIQUE NOT NULL	,\
    	PRIMARY KEY(admin_id)										,\
    	FOREIGN kEY (admin_id) REFERENCES users(college_id) 		\
    	);"
  end
end