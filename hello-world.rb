system("cls") || system("clear")

loop do

 scores = {}
 leaderboard = {}
  puts "Welcome Aboard Player".upcase
  #input player name
  puts "Please Enter your name "
  name = gets.chomp

  #Guess from Player - number only
  puts "Welcome #{name}!"
  age = rand (1..10)
  puts "Guess a number! Im thingking between 1 - 10, take a guess :)"
  puts "Answer Is = #{age}"
  guess = gets.chomp


   if guess.to_i == age
     puts "congratulation!! #{name}. Your are correct"
   else puts "Sory Try Again! "
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
else puts "sorry you have run out of attempt :/ "
  end

puts "="*100
puts "="*100


  puts "List Of Player"
  
  end
