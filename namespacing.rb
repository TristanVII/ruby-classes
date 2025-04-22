# frozen_string_literal: true

module Mammal
  class Dog # rubocop:disable Style/Documentation
    attr_accessor :age

    def initialize(age)
      @age = age
    end

    def dog_years
      age * 7
    end

    private

    def human_years
      age
    end
  end

  class Cat # rubocop:disable Style/Documentation
    attr_reader :name

    def initialize
      @name = 'ZORO'
    end

    def cat_name
      name
    end
  end
end

module Conversion # rubocop:disable Style/Documentation
  def self.farenheit_to_celsius(number)
    (number - 32) * 5 / 9
  end
end

doggy = Mammal::Dog.new(2)
kitty = Mammal::Cat.new

puts kitty.get_name

puts Conversion.farenheit_to_celsius(32)

puts doggy.dog_years
# puts doggy.human_years

class Parent
  def say_hello
    puts 'Hello from parent'
  end
end

class Child < Parent
  def say_hello
    # super -> without means we overwrote the Parent class
    puts 'Hello from CHILD'
  end
end

child = Child.new
child.say_hello

p child.instance_of? Child
p child.instance_of? Parent

#### EXERCISE ####

class Vehicle
  @@MADE = 0
  @@created_time = Time.now
  attr_accessor :brand, :model

  def initialize(brand, model)
    @@MADE += 1
    self.brand = brand
    self.model = model
  end

  def self.made_cars
    @@MADE
  end

  def get_age
    Time.now - @@created_time
  end
end

class Car < Vehicle
  @@SPECS = { 'max_speed' => 100, 'cost' => 20_000 }
end

myCar = Car.new('Benz', 'G-class')
Car.new('Volvo', 'cx-60')
puts Car.made_cars

puts myCar.get_age

class Student
  attr_reader :gratde
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than(other_student)
    grade > other_student.grade
  end
end

tristan = Student.new('Tristan', '97')
talia = Student.new('Talia', '37')

puts tristan.better_grade_than(talia)
