system("cls") || system("clear")
def main
  arr = []
  puts "="*100
  puts "Bataras Hypermarket"
  puts "="*100
  puts "Welcome To Self Check Out Shopping Cart"
  puts "To Start, Enter Your Name"
  name = gets.chomp
  arr << name
  puts "Follow the instruction given #{name}."
  price_enter
end

def price_enter
  arr = []
  puts "You Can Now Start Enter Price Of Each Item"
  while price = gets.chomp
    if price != "x"
      puts "item price entered RM%0.2f, Enter x To Check Out" % [price]
      arr << price.to_i
      @sum = arr.inject(:+)
    else
      puts "Check Out Final total RM%0.2f" % [@sum]
      discount
  end
end
end

def discount
  puts "Do you have discount voucher? Please Enter Your Discount Voucher, If N/A Press Enter"
  while voucher = gets.chomp
    if voucher != "luckylucky"
      puts " you entered invalid voucher"
    else
      puts " your final amount after discount 20% RM#{@sum - (@sum*20/100)}"
    end
  end
end

def balance_payment
  puts "ds"
end

def exit_start_new_customer
  puts "ds"
end

main
