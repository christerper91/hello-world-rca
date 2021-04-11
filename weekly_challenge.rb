system("cls") || system("clear")
def main
  puts "="*100
  puts "Bataras Hypermarket"
  puts "="*100
  puts "Welcome To Self Check Out Shopping Cart"
  puts "To Start, Enter Your Name"
  name = gets.chomp
  puts "Follow the instruction given #{name}."
  price_enter
end

def price_enter
  arr = []
  puts "You Can Now Start Enter Price Of Each Item"
  while price = gets.chomp
    if price == "x"
      break
    else
    puts "item price entered RM%0.2f" % [price]
    arr << price.to_i
    sum = arr.inject(:+)
    puts "total RM%0.2f" % [sum]
  end
end
end

def check_out
end

def payment
  puts "ds"
end

def balance_payment
  puts "ds"
end

def exit_start_new_customer
  puts "ds"
end

main
