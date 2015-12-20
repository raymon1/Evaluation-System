class CreateTfs < ActiveRecord::Migration
  def change
        execute "CREATE TABLE tfs(										 	\
   	    tfID				INTEGER											,\
   	    answer				BOOLEAN											,\
    	PRIMARY KEY (tfID)													,\
    	FOREIGN kEY (tfID) REFERENCES questions(questionID) 				,\
    	CHECK(mark > 0)														 \
    	);"
  end
end
