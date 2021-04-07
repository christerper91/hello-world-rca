system("cls") || system("clear")

loop do
  leaderboard = []
  player = []
  puts "Welcome Aboard Player".upcase
  #input player name
  puts "Please Enter your name "
  name = Array.new
  name = gets.chomp

  #Guess from Player - number only
  puts "Welcome #{name}!"
  age = rand (1..10)
  tries = 7
  puts "Guess a number! Im thingking between 1 - 10, take a guess :)"
  puts "Answer Is = #{age}"
  guess = gets.chomp

   if guess.to_i == age
     puts "congratulation!! #{name}. Your are correct"
   else puts "Best of Luck! try again! "
   end

 #while loop
 attempt = 1
 while guess.to_i !=age && (attempt < 7)
 attempt +=1
 guess = gets.chomp
 if guess.to_i == age
   puts "congratulation!! #{name}. Your are correct"
 else puts "Best of Luck! try again! "
 end

  if guess.to_i == age && (attempt < 7)
  puts "congratulation!! #{name}. Your are correct"
  else puts "sorry have run out of attempt :/ "
  end

puts "="*100
puts "="*100


  puts "List Of Player"
  puts name
  end
end
