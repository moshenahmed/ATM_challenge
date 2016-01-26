require './lib/account'

class Person
  attr_accessor :name, :cash, :accounts

  def initialize(name)
    @name = name
    @cash = 0
  end

  def create_account
    @accounts = []
    @accounts << Account.new(holder: self)
  end
  
  def get_cash(amount, account, atm, pin)
    atm.withdraw(amount, pin, account.exp_date, account)
    @cash = @cash + amount
  end
end
