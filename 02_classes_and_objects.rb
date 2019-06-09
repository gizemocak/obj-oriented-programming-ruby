class GoodDog
  def initialize(name)
    @name = name #@name is an instance variable
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky") #this obj was initialized
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak



