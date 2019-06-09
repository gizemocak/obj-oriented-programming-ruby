class GoodDog
  attr_accessor :name #automatically creates getter and setter methods for us

  def initialize(name)
    @name = name #@name is an instance variable
  end
  
  # def name #renamed from get_name
  #   @name
  # end  

  # def name=(name) #renamed from set_name
  #   @name = name 
  # end

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





