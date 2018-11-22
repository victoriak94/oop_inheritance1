
class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end

end

class Student < Person

  @@students = []

  def learn
    puts "I get it!"
  end

  def self.create(name)
    new_student = Student.new(name)
    @@students << new_student
    return new_student
  end

end

class Instructor < Person

  @@instructors = []

  def teach
    puts "Everything in ruby is an object."
  end

  def self.create(name)
    new_instructor = Instructor.new(name)
    @@instructors << new_instructor
    return new_instructor
  end

end

nadia = Instructor.create("Nadia")
chris = Student.create("Chris")

puts chris.greeting
puts nadia.teach
puts chris.learn
puts chris.teach # doens't work because this instance method only exists under the Instructor class, not the super class which in this instance is Person. Therefore, the teach method is not inherited by the Student class.
