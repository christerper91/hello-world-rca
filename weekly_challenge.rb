system("cls") || system("clear")
def main
  puts "="*100
  puts "Bataras Hypermarket"
  puts "="*100
  puts "Welcome To Self Check Out Shopping Cart"
  puts "To Start, Enter Your Name"
  name = gets.chomp
  puts "Follow the instruction given #{name}."
  puts "You Can Now Start Enter Price Of Each Item"
  price_enter
end

def price_enter
  arr = []
  attempt = 1
  price = gets.chomp
  attempt += 1
  price.to_i == (attempt == 500)
  puts "item price entered RM%0.2f" % [price]
  arr << price.to_i
  puts "Enter The Next Item Price, Press 'x' if Want To Check Out"
  next_price = gets.chomp
  arr << (price.to_i + next_price.to_i)
  puts "item price entered RM%0.2f" % [next_price]
  puts "total RM%0.2f" % [(price.to_i + next_price.to_i)]
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
