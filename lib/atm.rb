class Atm

  def withdraw(amount, pin)
    case
    when negative_value(amount) then 'No negative numbers, please!'
    else
      amount % 5 == 0 and check_pin(pin)
    end
  end

 private
 
 def negative_value(value)
   value <= 0
 end
 
 def check_pin(pin)
   pin == 1234
 end
end
