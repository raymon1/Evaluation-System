class CreateAnswers < ActiveRecord::Migration
  def change
        execute "CREATE TABLE answers(                      \
        student_id        INTEGER     UNIQUE NOT NULL               ,\
        question_id       INTEGER     UNIQUE NOT NULL               ,\
        student_answer    TEXT ,\
      PRIMARY KEY (student_id,question_id)                    ,\
      FOREIGN kEY (student_id) REFERENCES users(college_id)         ,\
      FOREIGN kEY (question_id) REFERENCES questions(question_id)         \
      );"
  end
end
