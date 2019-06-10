class Animal
  def speak
    "hello"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end 
end

sparky = GoodDog.new
sparky.speak