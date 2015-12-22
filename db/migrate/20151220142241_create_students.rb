class CreateStudents < ActiveRecord::Migration
  def change
    execute "CREATE TABLE students(							 \
    	student_id		INTEGER								,\
    	seat_no			INTEGER			NOT NULL UNIQUE		,\
    	section			SMALLINT							,\
    	studying_year	INTEGER								,\
    	department		VARCHAR(100)						,\

    	PRIMARY KEY (student_id)								,\
    	FOREIGN kEY (student_id) REFERENCES users(college_id) ,\
    	CHECK(seat_no > 0)									,\
    	CHECK(section > 0)									,\
    	CHECK(studying_year > 0)								\
    	);"
  end
end
