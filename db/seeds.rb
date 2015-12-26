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

User.create(college_id: 11,national_id: "11",first_name: "bassem",middle_name: "mohamed",last_name: "mohamed",email: "email11@gmail.com",password: "password11")
User.create(college_id: 12,national_id: "12",first_name: "sahar",middle_name: "mohamed",last_name: "mohamed",email: "email12@gmail.com",password: "password12")
User.create(college_id: 13,national_id: "13",first_name: "eslam",middle_name: "mohamed",last_name: "mohamed",email: "email13@gmail.com",password: "password13")
User.create(college_id: 14,national_id: "14",first_name: "amr",middle_name: "mohamed",last_name: "mohamed",email: "email14@gmail.com",password: "password14")
User.create(college_id: 15,national_id: "15",first_name: "mona",middle_name: "mohamed",last_name: "mohamed",email: "email15@gmail.com",password: "password15")

User.create(college_id: 16,national_id: "16",first_name: "admin",middle_name: "admin",last_name: "admin",email: "email16@gmail.com",password: "password16")
User.create(college_id: 17,national_id: "17",first_name: "admin",middle_name: "admin",last_name: "admin",email: "email17@gmail.com",password: "password17")


#students
Student.create(student_id: 1,seat_no: 1,section: 2, studying_year: 0)
Student.create(student_id: 2,seat_no: 2,section: 2, studying_year: 0)
Student.create(student_id: 3,seat_no: 3,section: 2, studying_year: 1)
Student.create(student_id: 4,seat_no: 4,section: 2, studying_year: 1)
Student.create(student_id: 5,seat_no: 5,section: 2, studying_year: 2)
Student.create(student_id: 6,seat_no: 6,section: 2, studying_year: 2)
Student.create(student_id: 7,seat_no: 7,section: 2, studying_year: 3)
Student.create(student_id: 8,seat_no: 8,section: 2, studying_year: 3)
Student.create(student_id: 9,seat_no: 9,section: 2, studying_year: 4)
Student.create(student_id: 10,seat_no: 10,section: 2, studying_year: 4)


#instructors
Instructor.create(instructor_id: 11,major: "computer")
Instructor.create(instructor_id: 12,major: "computer")
Instructor.create(instructor_id: 13,major: "Power")
Instructor.create(instructor_id: 14,major: "Power")
Instructor.create(instructor_id: 15,major: "communication")\

#admin
Admin.create(admin_id: 16)
Admin.create(admin_id: 17)

#courses
Course.create(code: "CSE1",name:"database",studying_year: 4)
Course.create(code: "CSE2",name:"compiler",studying_year: 4)
Course.create(code: "CSE3",name:"network",studying_year: 4)
Course.create(code: "CSE4",name:"distributed",studying_year: 4)
Course.create(code: "CSE5",name:"security",studying_year: 4)
Course.create(code: "CSE6",name:"logic",studying_year: 3)
Course.create(code: "CSE7",name:"data structure",studying_year: 3)


# Forms
Form.create(form_id: 10, course_id: "CSE1", instructor_id: 11,title: "Quiz 1")
Form.create(form_id: 20, course_id: "CSE1", instructor_id: 14,title: "Quiz 2")
Form.create(form_id: 30, course_id: "CSE2", instructor_id: 12,title: "Quiz A")
Form.create(form_id: 40, course_id: "CSE2", instructor_id: 12,title: "Quiz B")
Form.create(form_id: 50, course_id: "CSE2", instructor_id: 15,title: "Quiz C")
Form.create(form_id: 60, course_id: "CSE3", instructor_id: 13,title: "Quiz Aa")
Form.create(form_id: 70, course_id: "CSE3", instructor_id: 13,title: "Quiz Ba")
Form.create(form_id: 80, course_id: "CSE3", instructor_id: 13,title: "Quiz Ca")

Form.create(form_id: 90, course_id: "CSE1", instructor_id: 11,title: "Assignment 1")
Form.create(form_id: 100, course_id: "CSE1", instructor_id: 14,title: "Assignment 2")
Form.create(form_id: 110, course_id: "CSE1", instructor_id: 14,title: "Assignment 3")
Form.create(form_id: 120, course_id: "CSE2", instructor_id: 12,title: "Assignment 1")
Form.create(form_id: 130, course_id: "CSE2", instructor_id: 15,title: "Assignment 2")
Form.create(form_id: 140, course_id: "CSE2", instructor_id: 15,title: "Assignment 3")
Form.create(form_id: 150, course_id: "CSE3", instructor_id: 13,title: "Assignment 1")
Form.create(form_id: 160, course_id: "CSE3", instructor_id: 13,title: "Assignment 2")

Form.create(form_id: 170, course_id: "CSE1", instructor_id: 11,title: "Sheet No. 1")
Form.create(form_id: 180, course_id: "CSE1", instructor_id: 11,title: "Sheet No. 2")
Form.create(form_id: 190, course_id: "CSE1", instructor_id: 14,title: "Sheet No. 3")
Form.create(form_id: 200, course_id: "CSE2", instructor_id: 12,title: "Sheet No. 1")
Form.create(form_id: 210, course_id: "CSE2", instructor_id: 12,title: "Sheet No. 2")
Form.create(form_id: 220, course_id: "CSE2", instructor_id: 15,title: "Sheet No. 3")
Form.create(form_id: 230, course_id: "CSE3", instructor_id: 13,title: "Sheet No. 1")
Form.create(form_id: 240, course_id: "CSE3", instructor_id: 13,title: "Sheet No. 2")

Form.create(form_id: 250, course_id: "CSE1", instructor_id: 11,title: "Feedback A")
Form.create(form_id: 260, course_id: "CSE2", instructor_id: 15,title: "Feedback A")
Form.create(form_id: 270, course_id: "CSE3", instructor_id: 13,title: "Feedback A")



# Quizzes
Quiz.create(quiz_id: 10, duration: 1.5, quiz_mark: 20, avg_mark: 15)
Quiz.create(quiz_id: 20, duration:1.5 , quiz_mark: 20, avg_mark:15 )
Quiz.create(quiz_id: 30, duration:1.5 , quiz_mark:20 , avg_mark: 15)
Quiz.create(quiz_id: 40, duration:1.5, quiz_mark: 20, avg_mark: 15)
Quiz.create(quiz_id: 50, duration:1.5 , quiz_mark:20 , avg_mark:15 )
Quiz.create(quiz_id: 60, duration:1.5 , quiz_mark:20 , avg_mark:15 )
Quiz.create(quiz_id: 70, duration:1.5 , quiz_mark: 20, avg_mark:15 )
Quiz.create(quiz_id: 80, duration:1.5, quiz_mark: 20, avg_mark: 15)

#Assignement
# Assignment.create(assignment_id: 9)
# Assignment.create(assignment_id: 10)
# Assignment.create(assignment_id: 11)
# Assignment.create(assignment_id: 12)
# Assignment.create(assignment_id: 13)
# Assignment.create(assignment_id: 14)
# Assignment.create(assignment_id: 15)
# Assignment.create(assignment_id: 16)

# #Sheet
# Sheet.create(sheet_id: 17)
# Sheet.create(sheet_id: 18)
# Sheet.create(sheet_id: 19)
# Sheet.create(sheet_id: 20)
# Sheet.create(sheet_id: 21)
# Sheet.create(sheet_id: 22)
# Sheet.create(sheet_id: 23)
# Sheet.create(sheet_id: 24)

#Feedback
# Feedback.create(feedback_id: 25)
# Feedback.create(feedback_id: 26)
# Feedback.create(feedback_id: 27)

# STUDENT ENROLL
Enrollin.create(course_id: "CSE1" , student_id: 1 )
Enrollin.create(course_id: "CSE1" , student_id: 2 )
Enrollin.create(course_id: "CSE1" , student_id: 3 )
Enrollin.create(course_id: "CSE1" , student_id: 4 )
Enrollin.create(course_id: "CSE2" , student_id: 1 )
Enrollin.create(course_id: "CSE2" , student_id: 2 )
Enrollin.create(course_id: "CSE2" , student_id: 3 )
Enrollin.create(course_id: "CSE2" , student_id: 4 )
Enrollin.create(course_id: "CSE2" , student_id: 5 )
Enrollin.create(course_id: "CSE2" , student_id: 6 )
Enrollin.create(course_id: "CSE2" , student_id: 7 )
Enrollin.create(course_id: "CSE3" , student_id: 5 )
Enrollin.create(course_id: "CSE3" , student_id: 6 )
Enrollin.create(course_id: "CSE3" , student_id: 7 )
Enrollin.create(course_id: "CSE3" , student_id: 8 )
Enrollin.create(course_id: "CSE3" , student_id: 9 )
Enrollin.create(course_id: "CSE3" , student_id: 10 )


# INSTRUCTOR TEACHES COURSE
Teach.create(course_id:"CSE1" , instructor_id: 11 )
Teach.create(course_id:"CSE2" , instructor_id: 12 )
Teach.create(course_id:"CSE3" , instructor_id: 13 )
Teach.create(course_id:"CSE1" , instructor_id: 14 )
Teach.create(course_id:"CSE2" , instructor_id: 15 )
Teach.create(course_id:"CSE4" , instructor_id: 11 )
Teach.create(course_id:"CSE5" , instructor_id: 11 )

#question
# #Quiz Sample
# Question.create(question_id: 10, form_id: 1, question: "Are you a rabbit?", mark: 2)
# Question.create(question_id: 20, form_id: 1, question: "Are you a human?", mark: 2)
# Question.create(question_id: 30, form_id: 1, question: "How many is 1+1?", mark: 2)
# Question.create(question_id: 40, form_id: 1, question: "How many fingers do you have?", mark: 2)
# Question.create(question_id: 50, form_id: 1, question: "What is the first computer name?", mark: 2)
# Question.create(question_id: 60, form_id: 1, question: "Who is the first one to set foot on moon?", mark: 2)
# Question.create(question_id: 70, form_id: 1, question: "Explain why water boils", mark: 2)
# Question.create(question_id: 80, form_id: 1, question: "How are you doing?", mark: 2)
# #Assignment Sample
# Question.create(question_id: 90, form_id: 9, question: "Are you a rabbit?", mark: 2)
# Question.create(question_id: 100, form_id: 9, question: "Are you a human?", mark: 2)
# Question.create(question_id: 110, form_id: 9, question: "How many is 1+1?", mark: 2)
# Question.create(question_id: 120, form_id: 9, question: "How many fingers do you have?", mark: 2)
# Question.create(question_id: 130, form_id: 9, question: "What is the first computer name?", mark: 2)
# Question.create(question_id: 140, form_id: 9, question: "Who is the first one to set foot on moon?", mark: 2)
# Question.create(question_id: 150, form_id: 9, question: "Explain why water boils", mark: 2)
# Question.create(question_id: 160, form_id: 9, question: "How are you doing?", mark: 2)
# #Sheet Sample
# Question.create(question_id: 170, form_id: 19, question: "Are you a rabbit?", mark: 2)
# Question.create(question_id: 180, form_id: 19, question: "Are you a human?", mark: 2)
# Question.create(question_id: 190, form_id: 19, question: "How many is 1+1?", mark: 2)
# Question.create(question_id: 200, form_id: 19, question: "How many fingers do you have?", mark: 2)
# Question.create(question_id: 210, form_id: 19, question: "What is the first computer name?", mark: 2)
# Question.create(question_id: 220, form_id: 19, question: "Who is the first one to set foot on moon?", mark: 2)
# Question.create(question_id: 230, form_id: 19, question: "Explain why water boils", mark: 2)
# Question.create(question_id: 240, form_id: 19, question: "How are you doing?", mark: 2)
# #Feedback sample
# Question.create(question_id: 250, form_id: 25, question: "Evaluate The Course ", mark: 1)
# Question.create(question_id: 260, form_id: 25, question: "Evaluate The Professor", mark: 1)
# Question.create(question_id: 270, form_id: 25, question: "Are you happy? ", mark: 1)
# Question.create(question_id: 280, form_id: 25, question: "Are you satisfied?", mark: 1)

# #tfs
# Tf.create(tf_id: 1, answer: 0)
# Tf.create(tf_id: 2, answer: 1)
# Tf.create(tf_id: 9, answer: 0)
# Tf.create(tf_id: 10, answer: 1)
# Tf.create(tf_id: 17, answer: 0)
# Tf.create(tf_id: 18, answer: 1)
# Tf.create(tf_id: 27, answer: 1)
# Tf.create(tf_id: 28, answer:1 )

# #numerical
# NumericalQuestion.create(numerical_question_id: 3, answer: 2)
# NumericalQuestion.create(numerical_question_id: 4, answer: 10)
# NumericalQuestion.create(numerical_question_id: 11, answer: 2)
# NumericalQuestion.create(numerical_question_id: 12, answer: 10)
# NumericalQuestion.create(numerical_question_id: 19, answer: 2)
# NumericalQuestion.create(numerical_question_id: 20, answer: 10)

#MCQS
# Mcq.create(mcq_id: 1, answer: "ENIAC")
# Mcq.create(mcq_id: 2, answer: "ENIAC")
# Mcq.create(mcq_id: 3, answer: "ENIAC")
# Mcq.create(mcq_id: 4, answer: "ENIAC")
# Mcq.create(mcq_id: 7, answer: "ENIAC")
# Mcq.create(mcq_id: 8, answer: "ENIAC")
# Mcq.create(mcq_id: 9, answer: "ENIAC")
# Mcq.create(mcq_id: 10, answer: "ENIAC")
# Mcq.create(mcq_id: 11, answer: "ENIAC")
# Mcq.create(mcq_id: 12, answer: "ENIAC")
# Mcq.create(mcq_id: 15, answer: "ENIAC")
# Mcq.create(mcq_id: 16, answer: "ENIAC")
# Mcq.create(mcq_id: 17, answer: "ENIAC")
# Mcq.create(mcq_id: 18, answer: "ENIAC")
# Mcq.create(mcq_id: 19, answer: "ENIAC")
# Mcq.create(mcq_id: 20, answer: "ENIAC")
# Mcq.create(mcq_id: 23, answer: "ENIAC")

# Mcq.create(mcq_id: 5, answer: "ENIAC")
# Mcq.create(mcq_id: 6, answer: "Neil Armstrong")
# Mcq.create(mcq_id: 13, answer: "ENIAC")
# Mcq.create(mcq_id: 14, answer: "Neil Armstrong")
# Mcq.create(mcq_id: 21, answer: "ENIAC")
# Mcq.create(mcq_id: 22, answer: "Neil Armstrong")
# Mcq.create(mcq_id: 25, answer: "Very Good")
# Mcq.create(mcq_id: 26, answer: "Very Good")

#mcqs choicees
# McqChoice.create(mcq_id: 1, choice: "Sakhr")
# McqChoice.create(mcq_id: 2, choice: "ENIAC")
# McqChoice.create(mcq_id: 3, choice: "Microsft")
# McqChoice.create(mcq_id: 4, choice: "other")
# McqChoice.create(mcq_id: 5, choice: "Lucy")
# McqChoice.create(mcq_id: 6, choice: "Lucky")
# McqChoice.create(mcq_id: 7, choice: "Neil Armstrong")

# McqChoice.create(mcq_id: 8, choice: "Sakhr")
# McqChoice.create(mcq_id: 9, choice: "ENIAC")
# McqChoice.create(mcq_id: 10, choice: "Lucy")
# McqChoice.create(mcq_id: 11, choice: "Neil Armstrong")

# McqChoice.create(mcq_id: 12, choice: "Sakhr")
# McqChoice.create(mcq_id: 13, choice: "ENIAC")
# McqChoice.create(mcq_id: 14, choice: "Lucy")
# McqChoice.create(mcq_id: 15, choice: "Neil Armstrong")

# McqChoice.create(mcq_id: 16, choice: "Fair")
# McqChoice.create(mcq_id: 17, choice: "Good")
# McqChoice.create(mcq_id: 18, choice: "Very Good")
# McqChoice.create(mcq_id: 19, choice: "Excellent")

# McqChoice.create(mcq_id: 20, choice: "Fair")
# McqChoice.create(mcq_id: 21, choice: "Good")
# McqChoice.create(mcq_id: 22, choice: "Very Good")
# McqChoice.create(mcq_id: 23, choice: "Excellent")

# #essay
# EssayQuestion.create(essay_id: 7, answer: "surface presssure is lower than atmospheric pressure")
# EssayQuestion.create(essay_id: 8, answer: "I'm fine")
# EssayQuestion.create(essay_id: 15, answer: "surface presssure is lower than atmospheric pressure")
# EssayQuestion.create(essay_id: 16, answer: "I'm fine")
# EssayQuestion.create(essay_id: 23, answer: "surface presssure is lower than atmospheric pressure")
# EssayQuestion.create(essay_id: 24, answer: "I'm fine")

#Student fill a form
# StudentTakeForm.create(form_id: 1, student_id:1 , student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 2, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 3, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 4, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 5, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 6, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 7, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 8, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 9, student_mark: 10);
# StudentTakeForm.create(form_id: 1, student_id: 10, student_mark:10 );
# StudentTakeForm.create(form_id: 9, student_id: 1, student_mark:16 );
# StudentTakeForm.create(form_id: 9, student_id: 2, student_mark:16 );
# StudentTakeForm.create(form_id: 9, student_id: 3, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 4, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 5, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 6, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 7, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 8, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 9, student_mark: 16);
# StudentTakeForm.create(form_id: 9, student_id: 10, student_mark:8 );
# StudentTakeForm.create(form_id: 19, student_id: 1, student_mark:8 );
# StudentTakeForm.create(form_id: 19, student_id: 2, student_mark:8 );
# StudentTakeForm.create(form_id: 19, student_id:3 , student_mark:8 );
# StudentTakeForm.create(form_id: 19, student_id: 4, student_mark:8 );
# StudentTakeForm.create(form_id: 19, student_id: 5, student_mark:8 );
# StudentTakeForm.create(form_id:19 , student_id: 6, student_mark:12 );
# StudentTakeForm.create(form_id:19 , student_id: 7, student_mark:12 );
# StudentTakeForm.create(form_id:19 , student_id: 8, student_mark:12 );
# StudentTakeForm.create(form_id: 19, student_id: 9, student_mark:12 );
# StudentTakeForm.create(form_id: 19, student_id: 10, student_mark:12 );
# StudentTakeForm.create(form_id: 25, student_id: 1, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 2, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 3, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 4, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 5, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 6, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 7, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 8, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 9, student_mark:0 );
# StudentTakeForm.create(form_id: 25, student_id: 10, student_mark:0 );


# courses taken by students
=begin
Student.find(1).courses << Course.find("CSE1")
Student.find(1).courses << Course.find("CSE2")
Student.find(1).courses << Course.find("CSE3")
=end

#quizzes of a certain course
=begin
Student.find(1).forms << Form.find(1)
Student.find(1).forms << Form.find(2)
Student.find(1).forms << Form.find(3)

=end
