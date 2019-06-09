#-----------GoodDog Class-----------#
class GoodDog
  attr_accessor :name, :height, :weight#automatically creates getter and setter methods for us

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info 
    "#{self.name} weights #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info   # => Spartacus weighs 45 lbs and is 24 inches tall.       s

#------------ MyCar Class ----------#
class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    self.current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    self.current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{self.current_speed} mph."
  end

  def shut_down
    self.current_speed = 0
    puts "Let's park"
  end

  def spray_paint(color)
     self.color = color
     puts "Your new color is #{color}"
  end


end

super_car = MyCar.new(2018, "white" , "perfect")
puts super_car.color
puts super_car.year
super_car.spray_paint("blue")

