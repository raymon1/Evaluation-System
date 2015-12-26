class CreateCourses < ActiveRecord::Migration
  def change
        execute "CREATE TABLE courses(						 \
    	code			VARCHAR(10)		UNIQUE NOT NULL			,\
    	name			VARCHAR(100)	DEFAULT 'New Course'     		,\
    	studying_year	INTEGER								,\
    	PRIMARY KEY (code)									,\
    	CHECK(studying_year > 0)							\
    	);"
  end
end

