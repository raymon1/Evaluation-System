class CreateStudents < ActiveRecord::Migration
  def change
    execute "CREATE TABLE students(							 \
    	studentID		INTEGER								,\
    	seatNo			INTEGER			NOT NULL UNIQUE		,\
    	section			SMALLINT							,\
    	studyingYear	INTEGER								,\
    	department		VARCHAR(100)						,\

    	PRIMARY KEY (studentID)								,\
    	FOREIGN kEY (studentID) REFERENCES users(collegeID) ,\
    	CHECK(seatNo > 0)									,\
    	CHECK(section > 0)									,\
    	CHECK(studyingYear > 0)								\
    	);"
  end
end
