class CreateForms < ActiveRecord::Migration
  def change
      execute "CREATE TABLE forms(                              \
      form_id                   SERIAL                       ,\
      course_id               VARCHAR(10)    NOT NULL                           ,\
      instructor_id          INTEGER          NOT NULL                           ,\
      title                    VARCHAR(100)   DEFAULT 'New Form'                 ,\
      no_of_questions        INTEGER                                  ,\
      creation_time_date       TIMESTAMP  DEFAULT CURRENT_TIMESTAMP   ,\ 
      PRIMARY KEY (form_id)                                  ,\
      FOREIGN kEY (instructor_id) REFERENCES instructors(instructor_id)   ,\
      FOREIGN kEY (course_id) REFERENCES courses(code)          ,\
      CHECK(no_of_questions > 0)                       \
      );"
  end
end

