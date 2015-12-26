class CreateQuestions < ActiveRecord::Migration
  def change
       execute "CREATE TABLE questions(                     \
        question_id     SERIAL   UNIQUE NOT NULL                        ,\
        form_id       INTEGER     NOT NULL                          ,\
        question      TEXT        NOT NULL                         ,\
        mark        INTEGER                              ,\
        explanation     TEXT      DEFAULT 'Explanation N/A'                         ,\
        difficulty      INTEGER   DEFAULT '3'                        ,\
        hint        TEXT          DEFAULT 'HINT N/A'                         ,\
        bonus       BOOLEAN     DEFAULT false           ,\
        hint_mark   INTEGER        DEFAULT 0                      ,\
      PRIMARY KEY (question_id)                               ,\
      FOREIGN kEY (form_id) REFERENCES forms(form_id)              ,\
      CHECK(mark > 0)                                            \
      );"
  end
end

