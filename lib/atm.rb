class Atm
  attr_accessor :funds
  #INITIAL_AMOUNT_IN_ATM = 1000

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


 private

 def do_transaction(amount)
   @funds = @funds - amount
   amount / 5
 end

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
