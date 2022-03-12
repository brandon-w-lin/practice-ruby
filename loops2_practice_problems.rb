# # 1. Write a while loop to print the numbers 1 through 10.

# 10.times { |i| puts (i + 1) }

# # 2. Write a while loop that prints the word "hello" 5 times.

# 5.times { puts "hello" }

# # 3. Write a while loop that asks the user to enter a word and will run forever until the user enters the word "stop".

# puts "enter a word:"
# word = ""
# while not word == "stop"
#   word = gets.chomp
# end

# # 4. Write a while loop that prints the numbers 0 through 100, increasing by 5 each time.

# 21.times { |i| puts (i * 5) }

# # 5. Write a while loop that prints the number 9000 ten times.
# i = 0
# while i < 10
#   puts 9000
#   i += 1
# end

# # 6. Write a while loop that asks the user to enter a number and will run forever until the user enters a number greater than 10.

# number = 0
# while not number.to_i > 10
#   puts "enter a number:"
#   number = gets.chomp
# end

# # 7. Write a while loop that prints the numbers 50 to 70.

# (50..70).each { |i| puts i }

# # 8. Write a while loop that prints the phrase "Around the world" 144 times.

# i = 0
# while i < 144
#   puts "Around the world"
#   i += 1
# end

# # 9. Write a while loop that asks the user to enter a word and will run forever until the user enters a word with more than 5 letters.

# word = ""
# while word.length < 6
#   puts "enter a word:"
#   word = gets.chomp
# end

# # 10. Write a while loop that prints the even numbers from 2 to 40.

# i = 2

# until i > 40
#   puts i
#   i += 2
# end
