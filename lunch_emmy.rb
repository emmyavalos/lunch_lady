require "colorize"

#Class constructor template to create dishes
class Dish
 #attr_accessor :index, :name, :price, :calories
  def initialize(id, name, price, calories)
     @id = id
     @name = name
     @price = price
     @calories = calories
   end
end


#list of avaiilable dishes
@enchiladas = Dish.new(1, "Green Enchiladas", 12.00, 800)

@pozole = Dish.new(2, "Pozole", 10.50, 450)

@albondigas = Dish.new(3, "Albondigas", 9.50, 700)

@mole = Dish.new(4, "Mole", 14.00, 1200)

@arroz = Dish.new(5, "Arroz el horno", 6.0, 200)

@guacamole = Dish.new(6, "Guacamole", 7.0, 350)

@jicama = Dish.new(7, "Jicama", 5.5, 125)

@elote = Dish.new(8, "Elote", 4.5, 250)

#array of dishes so they are easily searchable with 'each' loop
@dishes = [@enchiladas, @pozole, @albondigas, @mole, @arroz, @guacamole, @jicama, @elote]

@wallet = 25
@cost = 0
@calories = 0

def menu
  puts '@@@*************************************@@@'.colorize(:magenta)
  puts " Welcome to Emmy's Fine Mexican Restuarant".colorize(:magenta)
  puts "\n"
  puts " Here are the mains available for tonight:"
  puts "\n"
  puts "1.) Emmy's Green Tomatillo Enchiladas   $12"
  puts "2.) Spicy Pozole Rojo                 $10.5"
  puts "3.) Albondigas de Res                  $9.5"
  puts "4.) Mole Verde Zacatecano             $13.5"
  puts "@@@=====================================@@@".colorize(:magenta)
  puts "\n"

  puts "What will your main dinner choice be? (1-4)"
  @main_dish= gets.to_i

  puts '@@@*************************************@@@'.colorize(:light_blue)
  puts " Welcome to Emmy's Fine Mexican Restuarant".colorize(:light_blue)
  puts "\n"
  puts " Here are the sides available for tonight:"
  puts "\n"
  puts "5.) Arroz el horno                       $6"
  puts "6.) Guacamole y tortillas                $7"
  puts "7.) Jicama Slaw                        $5.5"
  puts "8.) Elote con chili y queso            $4.5"
  puts "@@@=====================================@@@".colorize(:light_blue)
  puts "\n"

  puts "What would you like for your side dish? (4-8)"
  @side_dish_1 = gets.to_i
  puts "What would you like for your next side dish? (4-8)"
  @side_dish_2 = gets.to_i

  @dishes.each do |x|
    if @main_dish == x.instance_variable_get(:@id)
      @main_dish = x.instance_variable_get(:@name)
      @cost += x.instance_variable_get(:@price)
      @wallet -=x.instance_variable_get(:@price)
      @price_main = x.instance_variable_get(:@price)
      @calories = x.instance_variable_get(:@calories)
      break
    end
  end

  @dishes.each do |x|
    if @side_dish_1 == x.instance_variable_get(:@id)
      @side_dish_1 = x.instance_variable_get(:@name)
      @cost += x.instance_variable_get(:@price)
      @wallet -=x.instance_variable_get(:@price)
      @price_side_1 = x.instance_variable_get(:@price)
      @calories += x.instance_variable_get(:@calories)
      break
    end
  end

  @dishes.each do |x|
    if @side_dish_2 == x.instance_variable_get(:@id)
      @side_dish_2 = x.instance_variable_get(:@name)
      @cost += x.instance_variable_get(:@price)
      @wallet -=x.instance_variable_get(:@price)
      @price_side_2 = x.instance_variable_get(:@price)
      @calories += x.instance_variable_get(:@calories)
      break
    end
  end

  puts "\n"
  puts "You're order this evening is the #{@main_dish} - $#{@price_main}."
  puts "You're sides are #{@side_dish_1} - $#{@price_side_1} and #{@side_dish_2} - $#{@price_side_2}"

  # # Would like to be able to format this summation better
  #
  # puts #{@main_dish}      #{@price_main} "
  # puts "#{@side_dish_1}   #{@price_side_1}"
  # puts "#{@side_dish_2}   #{@price_side_2}"
  puts "\n"
  puts "You're dinner bill total comes to $#{@cost}."
  puts "You're total calorie count is #{@calories}"
  puts "You're wallet has $#{@wallet}, remaining"
  puts "\n"

end


#puts enchiladas.inspect
menu
# puts @main_dish
# puts @side_dish_1
# puts @side_dish_2
