require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Esther", last_name: "Choi", hourly_rate: 100)
@store1.employees.create(first_name: "Humpty", last_name: "Dumpty", hourly_rate: 120)
@store1.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 30)

@store2.employees.create(first_name: "Hermione", last_name: "Granger", hourly_rate: 60)
@store2.employees.create(first_name: "Harry", last_name: "Potter", hourly_rate: 40)
@store2.employees.create(first_name: "Ron", last_name: "Weasley", hourly_rate: 70)
@store2.employees.create(first_name: "Severus", last_name: "Snape", hourly_rate: 100)