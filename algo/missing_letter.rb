# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  missing_letter = []
  range_arr = range.split(//)
  compare = (range_arr[0]..range_arr[-1]).to_a
  until range_arr == compare
    index = 0
    compare.each do |char|
      if char != range_arr[index]
        range_arr.insert(index, char)
        missing_letter << char
        break
      end
    index += 1
    end
  end
  return missing_letter.join if missing_letter.any?
  return nil
end


# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
