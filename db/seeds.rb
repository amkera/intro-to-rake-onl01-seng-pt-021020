require_relative "../lib/student.rb"

Student.create(name: "Melissa", grade: "10th")
Student.create(name: "April", grade: "10th")
Student.create(name: "Luke", grade: "9th")
Student.create(name: "Devon", grade: "11th")
Student.create(name: "Sarah", grade: "10th")


#Another task you will become familiar with is the seed task. This task is responsible for "seeding" our database with some dummy data.

#The conventional way to seed your database is to have a file in the db directory, db/seeds.rb, that contains some code to create instances of your class.

#Then, we define a rake task that executes the code in this file. This task will also be namespaced under db: See the Rakefile.