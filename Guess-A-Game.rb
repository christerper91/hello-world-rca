system("cls") || system("clear")

def main(scores)
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
    puts print_menu(name, scores)
end

def play_game(name, scores)
  puts "Lets Guess A Number Between 1 - 10"

  age = rand (1..10)
  puts "Correct Answer Is = #{age}"
  guess = gets.chomp
  attempt = 1
  tries = 7
  scores = {}
  if guess.to_i == age
    scores[name]=(tries-attempt)
    puts "congratulation!! #{name}. Your are correct"
    show_leaderboard(name, scores)
  else
    puts "Sory Try Again! Attempt left #{tries - attempt}"
  end


  while guess.to_i != age && (attempt < 7)
    scores[name]=(tries-attempt)
    attempt +=1
    puts "No Luck! Try Again! Attempt left #{tries - attempt + 1} "
    guess = gets.chomp
  end

  if guess.to_i == age && (attempt < 7)
    scores[name]=(tries-attempt)
    puts "="*100
    puts "congratulation!! #{name}. Your are correct"
    puts "="*100
    puts "Press 'n' if you want continue as a new player"
    puts "Press 'c'if you want continue as same player"
    puts "Press 'x' if you want to exit"
    show_leaderboard(name, scores)

  else
    scores[name]=(tries-attempt)
    puts "="*100
    puts "sorry you have run out of attempt :/ "
    puts "="*100
    puts "Press 'n' if you want continue as a new player"
    puts "Press 'c'if you want continue as same player"
    puts "Press 'x' if you want to exit"
    show_leaderboard(name, scores)
  end
  continue = gets.chomp
  system("cls") || system("clear")

end

def show_leaderboard(name, scores)
  sorted_scores = scores.sort_by {|k, v| v}
  sorted_scores.each do | score |
    puts "="*100
    puts "Player Scores".upcase
    puts "="*100
    puts "#{score[0]} - #{score[1]}"

  end
end

def print_menu(name, scores)
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
    puts play_game(name, scores)
  end
end

def separator
  "="*100
end
scores = {}
loop do
  main(scores)
end
