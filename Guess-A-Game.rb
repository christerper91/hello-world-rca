system("cls") || system("clear")

def main_menu
    puts "="*100
    puts "Welcome Aboard To Guess A Game Player"
    puts "="*100
    puts "To Start The Game, Please Enter Your Name"
end

def print_menu
  puts "="*100
  puts "1. Play Game"
  puts "2. Show Leaderboard"
  puts "3. Print Menu"
  puts "="*100
end

def play_game
  puts "Lets Guess A Number Between 1 - 10"
end

def separator
  "="*100
end

def show_leaderboard

end


puts main_menu
player = []
name = gets.chomp
player = name
system("cls") || system("clear")
puts "="*100
puts "Welcome Aboard #{name}, Select Your Option 1 - 3"
puts print_menu

option = gets.chomp
system("cls") || system("clear")
if option.to_i != 1
  puts "Sory Wrong Input, Choose Option 1, 2 or 3 ONLY!"
else
  puts play_game
end

age = rand (1..10)
puts "Answer Is = #{age}"
guess = gets.chomp


if guess.to_i == age
  puts "congratulation!! #{name}. Your are correct"
else
  puts "Sory Try Again! "
end

#while loop
attempt = 1
while guess.to_i != age && (attempt < 7)
attempt +=1
puts "No Luck! Try Again! "
guess = gets.chomp
end

if guess.to_i == age && (attempt < 7)
puts "congratulation!! #{name}. Your are correct"

else
puts "sorry you have run out of attempt :/ "
end
