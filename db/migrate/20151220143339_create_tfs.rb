class CreateTfs < ActiveRecord::Migration
  def change
        execute "CREATE TABLE tfs(										 	\
   	    tf_id				INTEGER											,\
   	    answer				BOOLEAN											,\
    	PRIMARY KEY (tf_id)													,\
    	FOREIGN kEY (tf_id) REFERENCES questions(question_id) 				\
    	);"
  end
end
