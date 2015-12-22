class CreateCourses < ActiveRecord::Migration
  def change
        execute "CREATE TABLE courses(						 \
    	code			VARCHAR(10)							,\
    	name			VARCHAR(100)	NOT NULL     		,\
    	studying_year	INTEGER								,\
    	PRIMARY KEY (code)									,\
    	CHECK(studying_year > 0)							\
    	);"
  end
end
