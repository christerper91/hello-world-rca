class CarRentalBookingManagement
  def initialize
    @company_name = []
    @new_booking = []
    @view_booking = []
    @new_customer = []
    @new_car = []
  end

 def run
   while true
     print_menu
     opt = gets.chomp.to_i
     if opt == 1
       add_company_name
     elsif opt == 2
       add_new_booking
     elsif opt == 3
       add_new_car
     elsif opt == 4
       add_new_customer
     else
       puts "Please Enter A Valid Option 1, 2, 3, 4 Only"
     end
   end
 end

  def print_menu
      puts "="*100
      puts "Welcome To Car Rental Booking Management System"
      puts "="*100
      puts "1. Add Company"
      puts "2. Add New Booking"
      puts "3. Add Car"
      puts "4. Add New Customer"
      puts "="*100
  end

  def prompt(text)
    print "#{text}"
    gets.chomp
  end
end

class CarRecord
  def initialize(type, plate)
  @type = type
  @plate = plate
  end
end


class CustomerDetail
  def initialize(name, number_fon)
  @name = name
  @number_fon = number_fon
  end
end

class PaymentRental
  def initialize (amount)
  @amount = amount
  end
end

private

def prompt(text)
  print "#{text}"
  gets.chomp
end

c = CarRentalBookingManagement.new
system("cls") || system("clear")
c.run
