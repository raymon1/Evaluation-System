class CreateUsers < ActiveRecord::Migration
def change
    execute "CREATE TABLE users(                                     \
        college_id      INTEGER                ,\
        date_of_birth       DATE                        ,\
        gender          VARCHAR(7)                 DEFAULT 'male'   ,\
        image           VARCHAR(1000)                               ,\
        national_id     VARCHAR(20)         UNIQUE                  ,\
        address         VARCHAR(1000)          DEFAULT 'EGY'        ,\
        first_name      VARCHAR(30)            DEFAULT 'Fname'          ,\
        middle_name     VARCHAR(30)            DEFAULT 'Mname'      ,\
        last_name       VARCHAR(30)             DEFAULT 'Lname'         ,\
        PRIMARY KEY(college_id)                                   ,\
        CHECK (college_id > 0)                                       \
        );"
  end
  end
