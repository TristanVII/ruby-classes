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