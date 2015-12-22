class McqChoice < ActiveRecord::Migration
  def change
  	   execute "CREATE TABLE mcq_choices(									\
   	    mcq_id			INTEGER											,\
   	    choice				TEXT											,\
    	PRIMARY KEY (mcq_id)													\
    	);"
  end
end
