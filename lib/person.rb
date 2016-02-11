
class Person
  attr_accessor :name, :accounts

  def initialize(name)
    @name = name
    @accounts = []
  end

  def create_account(type)
    account = type.new(self)
    @accounts << account
  end

  def get_cash (cash , account, atm, account_pin)
  end

  def cash
    @cash = 40
  end
end
