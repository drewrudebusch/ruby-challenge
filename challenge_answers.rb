# Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method 
# they would like to use (addition, subtraction, multiplication, division) 
# and then asks the user for two numbers, returning the result of the 
# method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

# class Calculator

#   attr_accessor :add, :sub, :mult, :div, :calculate

#   def add(num1, num2)
#     puts num1.to_i + num2.to_i
#     # self
#   end

#   def sub(num1, num2)
#     puts num1.to_i - num2.to_i
#     # self
#   end

#   def mult(num1, num2)
#     puts num1.to_i * num2.to_i
#     # self
#   end

#   def div(num1, num2)
#     puts num1.to_i / num2.to_i
#     # self
#   end

#   def calculate
#     puts "What calculation would you like to do? (add, sub, mult, div)?"
#       @calc = gets.chomp
#     puts "What is number 1?"
#       @num1 = gets.chomp
#     puts "What is number 2?"
#       @num2 = gets.chomp
#     self.method(@calc).call(@num1, @num2)
#     # add(@num1, @num2)
#   end
# end

# Calculator.new().calculate

######################################################################

# Challenge 2 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use 
#   other methods on the string such as reverse. The goal of the problem is to 
#   use a loop and the string accessors to figure out which values to swap for 
#   other values. Below is some sample output.

# Enter a string:
# reverse_me
# em_esrever


# class Reverser

#   def initialize
#     puts "Enter a string:"
#     @string = gets.chomp
#     reverse_string(@string.split(''))
#   end
  

#   def reverse_string(stringArr)
#     i = 0
#     last = stringArr.length - 1
#       while i < stringArr.length do
#         stringArr.insert(i, stringArr.slice!(last, 1))
#         i += 1
#       end

#     puts stringArr.join('')

#   end

# end

# Reverser.new

######################################################################

# Challenge 3 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance,
#  withdraw or deposit. Write three methods to perform these calculations and 
#  output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

# class Transaction

#   @@balance = 4000

#   def initialize
#     puts "Your current balance is:"
#     puts @@balance
#     getAction
#   end

#   def getAction
#     puts "What would you like to do? (deposit, withdraw, check_balance)"
#     @action = gets.chomp
#     self.method(@action).call()
#   end
#   def deposit
#     puts "How much would you like to deposit?"
#     @deposit_amt = gets.chomp.to_i
#     @@balance += @deposit_amt
#     trans_complete
#   end
#   def withdraw
#     puts "How much would you like to withdraw?"
#     @withdraw_amt = gets.chomp.to_i
#     if @withdraw_amt > @@balance
#       puts "Your withdrawal amount exceeds your current balance."
#     else
#       @@balance -= @withdraw_amt
#     end
#     trans_complete
#   end
#   def check_balance
#     trans_complete
#   end
#   def trans_complete
#     puts "Your current balance is #{@@balance}."
#     puts "Are you done?"
#     @confirm = gets.chomp
#     if @confirm == 'yes'
#       puts "Thank you!"
#     else
#       getAction
#     end
#   end

# end

# Transaction.new

######################################################################

# Challenge 4 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100. 
# Once the user guesses a number, the program should say, higher, lower, or 
# tell the user that he got the number correct. The user should continue to 
# make guesses until he guesses correctly. Also, once the user guesses correctly, 
# the program should print the number of guesses needed to arrive at the correct 
# answer. Below is sample output:

# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries

# class Guessing_game
#   @@number = Random.new.rand(1...100).to_i
#   @@guesses = 1

#   def initialize
#     puts @@number
#     puts "Guess a number between 1 and 100"
#     compare
#   end
#   def compare
#     @guess = gets.chomp.to_i
#     if @guess < 1 || @guess > 100
#       puts "Invalid value. Guess again"
#       @@guesses += 1
#       compare
#     elsif @guess < @@number
#       puts "The number is higher than #{@guess}. Guess again."
#       @@guesses += 1
#       compare
#     elsif @guess > @@number
#       puts "The number is lower than #{@guess}. Guess again."
#       @@guesses += 1
#       compare
#     elsif @guess == @@number
#       if @@guesses == 1
#         puts "You got it in #{@@guesses} try!"
#       else
#         puts "You got it in #{@@guesses} tries."
#       end
#     end
#   end
# end

# Guessing_game.new
