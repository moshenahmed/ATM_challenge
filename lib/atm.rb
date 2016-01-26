class Atm
  attr_accessor :funds, :antal
  #INITIAL_AMOUNT_IN_ATM = 1000

  #def initialize
  #  @funds = INITIAL_AMOUNT_IN_ATM
  #end


   def initialize
    @funds = 1000
   end

   def withdraw(amount, pin, expiry)
      case
        when !sufficient_fund_in_atm then 'Sorry, withdrawal is not possible.'
        when negative_value(amount) then 'No negative numbers, please!'
        when !check_pin(pin) then 'Wrong pin Brother!'
        when expiry (expiry) then 'Card is expired, please refer to Bank'
        when amount % 5 != 0 then 'Please round up to the closest 5'

        else
           do_transaction(amount)
           do_bill_count(amount)
     end
   end

 def do_bill_count(amount)
     amount / 5
 end

 def do_transaction(amount)
   @funds = @funds - amount
 end


private
 def expiry(date)
    date != 2020
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
