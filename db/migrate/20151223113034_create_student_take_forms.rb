class CreateStudentTakeForms < ActiveRecord::Migration
  def change
        execute "CREATE TABLE student_take_forms(             \
        form_id       INTEGER       NOT NULL               ,\
        student_id    INTEGER      NOT NULL               ,\
        submission_date   TIMESTAMP   DEFAULT CURRENT_TIMESTAMP                ,\
        student_mark      REAL                      ,\
      PRIMARY KEY (form_id,student_id)                    ,\
      FOREIGN kEY (student_id) REFERENCES users(college_id)        ,\
      FOREIGN kEY (form_id) REFERENCES forms(form_id)             \
      );"
  end
end
