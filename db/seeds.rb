# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users
User.create(college_id: 1,national_id: "1",first_name: "mohamed",middle_name: "ahmed",last_name: "abbas",email: "email1@gmail.com",password: "password1")
User.create(college_id: 2,national_id: "2",first_name: "raymon",middle_name: "mina",last_name: "youssef",email: "email2@gmail.com",password: "password2")
User.create(college_id: 3,national_id: "3",first_name: "arwa",middle_name: "soliman",last_name: "salem",email: "email3@gmail.com",password: "password3")
User.create(college_id: 4,national_id: "4",first_name: "nourhan",middle_name: "elkomy",last_name: "salem",email: "email4@gmail.com",password: "password4")
User.create(college_id: 5,national_id: "5",first_name: "kamal",middle_name: "ahmed",last_name: "mohamed",email: "email5@gmail.com",password: "password5")
User.create(college_id: 6,national_id: "6",first_name: "hussein",middle_name: "ahmed",last_name: "mohamed",email: "email6@gmail.com",password: "password6")
User.create(college_id: 7,national_id: "7",first_name: "fawzy",middle_name: "ahmed",last_name: "mohamed",email: "email7@gmail.com",password: "password7")
User.create(college_id: 8,national_id: "8",first_name: "nada",middle_name: "awad",last_name: "mohamed",email: "email8@gmail.com",password: "password8")
User.create(college_id: 9,national_id: "9",first_name: "nada",middle_name: "mokhtar",last_name: "mohamed",email: "email9@gmail.com",password: "password9")
User.create(college_id: 10,national_id: "10",first_name: "nourhan",middle_name: "zakaria",last_name: "mohamed",email: "email10@gmail.com",password: "password10")

User.create(college_id: 11,national_id: "11",first_name: "bassem",middle_name: "mohamed",last_name: "mohamed",email: "email110@gmail.com",password: "password11")
User.create(college_id: 12,national_id: "12",first_name: "sahar",middle_name: "mohamed",last_name: "mohamed",email: "email120@gmail.com",password: "password12")
User.create(college_id: 13,national_id: "13",first_name: "eslam",middle_name: "mohamed",last_name: "mohamed",email: "email130@gmail.com",password: "password13")
User.create(college_id: 14,national_id: "14",first_name: "amr",middle_name: "mohamed",last_name: "mohamed",email: "email14@gmail.com",password: "password14")
User.create(college_id: 15,national_id: "15",first_name: "mona",middle_name: "mohamed",last_name: "mohamed",email: "email150@gmail.com",password: "password15")
User.create(college_id: 16,national_id: "16",first_name: "admin",middle_name: "admin",last_name: "admin",email: "email160@gmail.com",password: "password16")
User.create(college_id: 17,national_id: "17",first_name: "admin",middle_name: "admin",last_name: "admin",email: "email170@gmail.com",password: "password17")


#students
Student.create(student_id: 1,seat_no: 1,section: 2, studying_year: 4)
Student.create(student_id: 2,seat_no: 2,section: 2, studying_year: 4)
Student.create(student_id: 3,seat_no: 3,section: 2, studying_year: 4)
Student.create(student_id: 4,seat_no: 4,section: 2, studying_year: 4)
Student.create(student_id: 5,seat_no: 5,section: 2, studying_year: 4)
Student.create(student_id: 6,seat_no: 6,section: 2, studying_year: 4)
Student.create(student_id: 7,seat_no: 7,section: 2, studying_year: 4)
Student.create(student_id: 8,seat_no: 8,section: 2, studying_year: 4)
Student.create(student_id: 9,seat_no: 9,section: 2, studying_year: 4)
Student.create(student_id: 10,seat_no: 10,section: 2, studying_year: 4)


#instructors
Instructor.create(instructor_id: 11,major: "computer")
Instructor.create(instructor_id: 12,major: "computer")
Instructor.create(instructor_id: 13,major: "computer")
Instructor.create(instructor_id: 14,major: "computer")
Instructor.create(instructor_id: 15,major: "computer")\

#admin
Admin.create(admin_id: 16)
Admin.create(admin_id: 17)

#courses
Course.create(code: "CSE1",name:"database",studying_year: 4)
Course.create(code: "CSE2",name:"compiler",studying_year: 4)
Course.create(code: "CSE3",name:"network",studying_year: 4)
Course.create(code: "CSE4",name:"distributed",studying_year: 4)
Course.create(code: "CSE5",name:"security",studying_year: 4)
Course.create(code: "CSE6",name:"logic",studying_year: 4)
Course.create(code: "CSE7",name:"data structure",studying_year: 4)


# Forms
Form.create(form_id: 1, course_id: "CSE1", instructor_id: 11,title: "Quiz 1")
Form.create(form_id: 2, course_id: "CSE1", instructor_id: 11,title: "Quiz 2")
Form.create(form_id: 3, course_id: "CSE3", instructor_id: 12,title: "Quiz 1")
Form.create(form_id: 4, course_id: "CSE4", instructor_id: 13,title: "Quiz 3")
Form.create(form_id: 5, course_id: "CSE1", instructor_id: 14,title: "Quiz 4")

# Quizzes
Quiz.create(quiz_id: 1)
Quiz.create(quiz_id: 2)
Quiz.create(quiz_id: 3)
Quiz.create(quiz_id: 4)
Quiz.create(quiz_id: 5)













