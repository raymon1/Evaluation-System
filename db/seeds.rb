# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	u1 = User.create(collegeid: '44779', firstname: "sara")
	st1 = Student.create(studentid: u1.collegeid, seatno: 124)
	query = "INSERT INTO users (collegeID, dateOfBirth, gender, nationalID, address, firstName, middleName, lastName)
	 VALUES ('44778', '1992-10-10', 'male', '21234567891234', '22ben elsarayat', 'Will', 'Smith', 'Ahmed')"
 	#User.connection.execute(query);

 	query = "INSERT INTO students (studentID, seatNo) VALUES (44778, 123) "
 	#Student.connection.execute(query);

 	c1 = Course.create(code: 'cse201', name: "computer physics")
 	c2 = Course.create(code: 'cse202', name: "computer math")
 	c3 = Course.create(code: 'cse203', name: "computer cooking")
 	c4 = Course.create(code: 'cse204', name: "Database")

 	e1 = Enrollin.create(studentid: st1.studentid, courseid: 'cse201')
 	e2 = Enrollin.create(studentid: st1.studentid, courseid: 'cse202')
 	e3 = Enrollin.create(studentid: st1.studentid, courseid: 'cse203')
 	e4 = Enrollin.create(studentid: st1.studentid, courseid: 'cse204')

