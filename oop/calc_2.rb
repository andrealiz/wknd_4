# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Calculate

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

class SimpleCalculator

  include Calculate

end

class FancyCalculator < SimpleCalculator

  include Calculate

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

puts "TESTING Calculator..."
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new


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



result = fancy_calculator.square_root(25)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end
