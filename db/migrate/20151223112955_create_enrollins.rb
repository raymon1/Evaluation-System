
class CreateEnrollins < ActiveRecord::Migration
  def change
     execute "CREATE TABLE enrollins(                      \
      course_id   VARCHAR(10)      NOT NULL                               ,\
      student_id    INTEGER        NOT NULL                             ,\
      semester    VARCHAR(20)      DEFAULT 'FALL'                   ,\
      PRIMARY KEY (student_id,course_id)                        ,\
      FOREIGN kEY (student_id) REFERENCES users(college_id)  ,\
      FOREIGN kEY (course_id) REFERENCES courses(code)          \
      );"
  end
end