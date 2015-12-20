class CreateCourses < ActiveRecord::Migration
  def change
        execute "CREATE TABLE courses(						 \
    	code			VARCHAR(10)							,\
    	name			VARCHAR(100)	NOT NULL     		,\
    	studyingYear	INTEGER								,\
    	PRIMARY KEY (code)									,\
    	CHECK(studyingYear > 0)								\
    	);"
  end
end
