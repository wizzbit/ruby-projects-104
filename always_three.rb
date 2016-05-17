def always3(number)
    (((number + 5) * 2 - 4) / 2 - number)
end
 
puts "Give me a number"
number1 = gets.to_i
 
puts always3(number1).to_s