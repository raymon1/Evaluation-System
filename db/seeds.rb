# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	#u1 = User.create(collegeID: 44778, firstName: "Emanuel")

	query = "INSERT INTO users (collegeID, dateOfBirth, gender, nationalID, address, firstName, middleName, lastName)
	 VALUES ('44778', '1992-10-10', 'male', '21234567891234', '22ben elsarayat', 'Will', 'Smith', 'Ahmed')"
 	#User.connection.execute(query);

 	query = "INSERT INTO students (studentID, seatNo) VALUES (44778, 123) "
 	Student.connection.execute(query);