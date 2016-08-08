# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

end

class WhizBangCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:


puts "TESTING Calculator..."
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new
whiz_calculator = WhizBangCalculator.new


result = simple_calculator.add(3, 4)

puts "Your method returned:"
puts result
puts

if result == 7
  puts "PASS!"
else
  puts "F"
end


result = simple_calculator.subtract(10, 4)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

result = simple_calculator.multiply(3, 4)

puts "Your method returned:"
puts result
puts

if result == 12
  puts "PASS!"
else
  puts "F"
end


result = simple_calculator.divide(16, 4)

puts "Your method returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end

result = whiz_calculator.square_root(25)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

result = whiz_calculator.hypotenuse(3, 4)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

result = whiz_calculator.exponent(5, 2)

puts "Your method returned:"
puts result
puts

if result == 25
  puts "PASS!"
else
  puts "F"
end
