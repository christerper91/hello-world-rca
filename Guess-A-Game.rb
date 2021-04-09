system("cls") || system("clear")

def main
    puts "="*100
    puts "Welcome Aboard To Guess A Game Player"
    puts "="*100
    puts "To Start The Game, Please Enter Your Name"
    player = []
    name = gets.chomp
    player = name
    system("cls") || system("clear")
    puts "="*100
    puts "Welcome Aboard #{name}, Select Your Option 1 - 3"
    puts print_menu(name)
end

def play_game(name)
  puts "Lets Guess A Number Between 1 - 10"

  age = rand (1..10)
  puts "Correct Answer Is = #{age}"
  guess = gets.chomp
  attempt = 1
  scores = {}
  if guess.to_i == age

    puts "congratulation!! #{name}. Your are correct"
  else
    puts "Sory Try Again! "
  end


  while guess.to_i != age && (attempt < 7)
  attempt +=1
  puts "No Luck! Try Again! "
  guess = gets.chomp
  end

  if guess.to_i == age && (attempt < 7)
    puts "="*100
    puts "congratulation!! #{name}. Your are correct"
    puts "="*100
    puts "Press 'n' if you want continue as a new player"
    puts "Press 'c'if you want continue as same player"
    puts "Press 'x' if you want to exit"
    puts show_leaderboard

  else
    puts "="*100
    puts "sorry you have run out of attempt :/ "
    puts "="*100
    puts "Press 'n' if you want continue as a new player"
    puts "Press 'c'if you want continue as same player"
    puts "Press 'x' if you want to exit"
  end
  continue = gets.chomp
  system("cls") || system("clear")

end

def show_leaderboard

end

def print_menu(name)
  puts "="*100
  puts "1. Play Game"
  puts "2. Show Leaderboard"
  puts "3. Print Menu"
  puts "="*100
  option = gets.chomp
  system("cls") || system("clear")
  if option.to_i != 1
    puts "Sory Wrong Input, Choose Option 1, 2 or 3 ONLY!"
  else
    puts play_game(name)
  end
end

def separator
  "="*100
end

loop do
puts main
end
