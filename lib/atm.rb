class Atm
  att_accessor :funds

  def withdraw(amount, pin,)
    case
    when negative_value(amount) then 'No negative numbers, please!'
    else
      case
      when amount % 5 == 0 and check_pin(pin) @funds ==1000
      else 

      end
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
