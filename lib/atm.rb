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
         else
           amount % 5 == 0 and check_pin(pin) #then  @@funds = @funds - amount
         #update @@funds = @funds - amount
     end
   end

   def remaining_available_funds(amount, pin)
     @@funds = @funds - amount
   end



 private

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
