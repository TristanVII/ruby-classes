class Dog
  # CONSTANT
  DOG_YEARS = 7
  attr_accessor :name, :breed, :age

  # class variable
  @@number_of_dogs = 0

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age * DOG_YEARS
    @@number_of_dogs += 1
  end

  def bark
    puts 'WOOF'
  end

  def self.total_number_of_dogs # class method definition
    @@number_of_dogs
  end

  def to_s
    "Hi, woof. I am #{name}, I am #{age} years old...woof"
  end
end

puts Dog.total_number_of_dogs
milo = Dog.new('milo', 'husky', 2)
milo.bark
puts Dog.total_number_of_dogs
puts milo.age
# overwrite to_s here to get output
puts milo
