class GoodDog
  def initialize(name)
    @name = name #@name is an instance variable
  end
  
  def get_name
    @name
  end  

  def set_name=(name)
    @name = name 
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky") #this obj was initialized
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

#puts sparky.name would return a NoMethodError , we would have to create a method that will return the name
puts sparky.get_name
sparky.set_name = "Sparkly"
puts sparky.get_name





