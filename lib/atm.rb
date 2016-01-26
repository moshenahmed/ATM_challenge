class Atm
  attr_accessor :funds
  STANDARD_PIN = 1234
  STANDARD_EXP_DATE = "10/17"

  #def initialize
  #  @funds = INITIAL_AMOUNT_IN_ATM
  #end


   def initialize
    @funds = 1000
   end

   def withdraw(amount, pin, expiry)
      case
      when negative_value(amount) then return_error_message(:negative_amount)
        when !check_pin(pin) then return_error_message(:wrong_pin)
        when expiry (expiry) then return_error_message(:card_expired)
        when !sufficient_fund_in_atm(amount) then return_error_message (:no_sufficient_fund)
        when amount % 5 != 0 then return_error_message (:non_rounded_amount)

        else
          do_transaction(amount)
          respons = { status: true,
            message: :success,
            date: Date.today.strftime("%F"),
            amount: amount,
            bills: do_bill_count(amount)}

           #do_bill_count(amount)
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
    date != STANDARD_EXP_DATE
end

 def negative_value(value)
   value <= 0
 end

 def check_pin(pin)
   pin == STANDARD_PIN
 end

 def sufficient_fund_in_atm(amount)
   @funds > amount
 end

 def return_error_message(message)
   { status: false, message: message, date: Date.today.strftime("%F") }
 end

end
