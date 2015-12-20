class McqChoice < ActiveRecord::Migration
  def change
  	   execute "CREATE TABLE mcq_choices(									\
   	    mcqID				INTEGER											,\
   	    choice				TEXT											,\
    	PRIMARY KEY (mcqID)													\
    	);"
  end
end
