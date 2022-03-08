# 1. Use a variable to store a number, then write a condition that prints 0 if the number is equal to 10, and prints -1 otherwise.

puts "enter a number:"
x = gets.chomp
if x == 10
  puts 0
else
  puts -1
end

# 2. Use a variable to store a number, then write a condition that prints -1 if the number is less than 10, prints 1 if the number is greater than 10, and prints 0 if the number is equal to 10.

puts "enter a number:"
x = gets.chomp.to_i
if x < 10
  puts -1
elsif x == 10
  puts 0
else
  puts 1
end

# 3. Use variables to store two numbers, then write a condition that prints 1 if the numbers are both less than 10, and prints 0 otherwise.

puts "enter two numbers:"
x = gets.chomp.to_i
y = gets.chomp.to_i
if (x < 10) && (y < 10)
  puts 1
else
  puts 0
end

# 4. Use a variable to store a number, then write a condition that prints 1 if the number is over 9000, and prints -1 otherwise.

puts "enter a number:"
x = gets.chomp.to_i
if (x > 9000)
  puts 1
else
  puts -1
end

# 5. Use a variable to store a number, then write a condition that prints 9 if the number is less than 10, prints 19 if the number is less than 20, prints 29 if the number is less than 30, and prints -1 otherwise (only one print statement should occur).

puts "enter a number:"
x = gets.chomp.to_i
y = 0
if x < 10
  y = 9
elsif x < 20
  y = 19
elsif x < 30
  y = 29
else
  y = -1
end

puts y

# 6. Use variables to store two numbers, then write a condition that prints 100 if either number is greater than 10, and prints -100 otherwise.

puts "enter two numbers:"
x = gets.chomp.to_i
y = gets.chomp.to_i
if (x > 10) || (y > 10)
  puts 100
else
  puts -100
end

# 7. Use a variable to store a number, then write a condition that prints 1776 if the number is less than 0, and prints 1979 otherwise.

puts "enter a number:"
x = gets.chomp.to_i
if (x < 0)
  puts 1776
else
  puts 1979
end

# 8. Use a variable to store a number, then write a condition that prints 100 if the number equals 100, prints 99 if the number is equal to 99, and prints 0 otherwise.

puts "enter a number:"
x = gets.chomp.to_i

if (x == 100) || (x == 99)
  puts x
else
  puts 0
end

# 9. Use variables to store two numbers, then write a condition that prints 1 if the first number is less than zero and the second number is greater than 0, and prints 0 otherwise.

puts "enter a number:"
x = gets.chomp.to_i
y = gets.chomp.to_i

if (x < 0) && (y > 0)
  puts 1
else
  puts 0
end

# 10. Use a variable to store a number, then write a condition that prints 5 if the number is greater than 80, prints 4 if the number is greater than 60, prints 3 if the number is greater than 40, prints 2 if the number is greater than 20, and prints 1 otherwise (only one print statement should occur).

puts "enter a number:"
x = gets.chomp.to_i
y = 0
case
when x > 80
  y = 5
when x > 60
  y = 4
when x > 3
  y = 3
when x > 20
  y = 2
else
  y = 1
end
puts y
