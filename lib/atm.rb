class Atm
  attr_accessor :funds, :antal
  #INITIAL_AMOUNT_IN_ATM = 1000
<<<<<<< HEAD
  
  #def initialize
  #  @funds = INITIAL_AMOUNT_IN_ATM
  #end
  
  def withdraw(amount, pin)
   # @antal=print_billz(amount)
   #puts "#{@antal} withdrawn bills"
    case
    when !sufficient_fund_in_atm then 'Sorry, withdrawal is not possible.'
    when negative_value(amount) then 'No negative numbers, please!'
    else
        amount % 5 == 0 and check_pin(pin) 
    end
  end
=======

   def initialize
    @funds = 1000
   end

   def withdraw(amount, pin)
      case
        when !sufficient_fund_in_atm then 'Sorry, withdrawal is not possible.'
        when negative_value(amount) then 'No negative numbers, please!'
        when !check_pin(pin) then 'Wrong pin Brother!'
        when amount % 5 != 0 then 'Please round up to the closest 5'
        else
           do_transaction(amount)
     end
   end

>>>>>>> 3f590836726a41d6ff7ed1510ad5b4dd1bf9c618

# skriver ut antal uttagna sedlar. 
#       puts "#{@billz} withdrawn bills"

 private

<<<<<<< HEAD
#def print_billz(value) 
#      @antal = value / 5
#end
=======
 def do_transaction(amount)
   @funds = @funds - amount
   amount / 5
 end
>>>>>>> 3f590836726a41d6ff7ed1510ad5b4dd1bf9c618

 def negative_value(value)
   value <= 0
 end

 def check_pin(pin)
   pin == 1234
 end

 def sufficient_fund_in_atm
   @funds > 0
 end

end
