# A public method is a method that is available to anyone who knows either the class name or the object's name. 

# We use the reserved word private in our program and anything below it is private (unless another reserved word is placed after it to negate it).

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

# sparky = GoodDog.new("Sparky", 4)
# sparky.human_years

#private methods are not accessible outside of the class definition at all, and are only accessible from inside the class when called without self.

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
puts fido.a_public_method 
