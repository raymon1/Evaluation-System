class CreateStudents < ActiveRecord::Migration
def change
    execute "CREATE TABLE students(                          \
        student_id      INTEGER              ,\
        seat_no         INTEGER         UNIQUE   NOT NULL   ,\
        section         SMALLINT              DEFAULT 0              ,\
        studying_year   INTEGER               DEFAULT 0           ,\
        department      VARCHAR(100)          DEFAULT 'PREP' ,\
        PRIMARY KEY (student_id)                                ,\
        FOREIGN kEY (student_id) REFERENCES users(college_id) ,\
        CHECK(seat_no > 0)                                  ,\
        CHECK(section > 0)                                  ,\
        CHECK(studying_year < 5)                                \
        );"
  end
end



