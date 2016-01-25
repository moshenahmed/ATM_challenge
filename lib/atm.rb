class Atm

  def withdraw(amount)
    case
    when negative_value(amount) then 'No negative numbers, please!'
    else
      amount % 5 == 0
    end
  end

 private
 
 def negative_value(value)
   value <= 0
 end
end
