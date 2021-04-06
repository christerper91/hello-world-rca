loop do

  puts "Hello World".upcase
  #input player name
  print "What's your name? "
  first_name = gets.chomp
  first_name.capitalize!

  #Guess from Player - number only
  print "Welcome #{first_name}!"
  age = 30
  tries = 7
  puts "Guess my Age! Im thingking between 20 - 30, take a guess :)"
  guess = gets.chomp

   if guess.to_i == age
     puts "congratulation!! #{first_name}. Your are correct"
   else puts "Best of Luck! try again! "
   end

 #while loop
 attempt = 1
 while guess.to_i !=age && (attempt < 7)
 attempt +=1
 guess = gets.chomp
 if guess.to_i == age
   puts "congratulation!! #{first_name}. Your are correct"
 else puts "Best of Luck! try again! "
 end
 end

  if guess.to_i == age && (attempt < 7)
  puts "congratulation!! #{first_name}. Your are correct"
  else puts "sorry have run out of attempt :/ "
  end
end
