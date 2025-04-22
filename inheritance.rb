class Animal

  attr_accessor :name
  def initialize(name)
    self.name = name
  end

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :color
  def initialize(name, color)
    super(name)
    @color = color
  end
  def speak
    # use super to invoke parent method
    "#{self.name} says " + super
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky", "red")
paws = Cat.new("Paws")
puts sparky.speak
puts paws.speak
puts paws.name
puts sparky.name
puts sparky.color

#### When to use class inheritence vs module ####
#
# Good practice to use class inheritence when you can say 'is-a'. A Dog is-a Animal
# Good practice to use module/mixins when you can say 'has-a'. A can has-a engine

puts "Inheritance"
module Walkable
  def walk
    "walking"
  end
end

class Mammel
  def initialize
    
  end

  def has_warm_blood
    true
  end
end

class Human < Mammel
  include Walkable
end

me = Human.new
print(Human.ancestors, "\n")
puts me.walk
