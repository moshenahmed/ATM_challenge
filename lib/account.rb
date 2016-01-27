class Account
  attr_accessor :holder, :balance, :exp_date, :pin

  def initialize(options={})
    @holder = options[:holder]
    @balance = options[:balance] || 0
    @exp_date = set_exp_date
    @pin = generate_pin
  end

# TODO should we write tests for validating initial account ? like same name ? initial balance


  def deposit(amount) #TODO shouldnt include @account ?
    @balance += amount
  end

  def atm_withdraw(amount)
    @balance -= amount
  end

  private

  def set_exp_date
    # TODO: Set the exp date 5 yrs from Date.today
    "10/17"
  end

  def generate_pin
    rand(1000..9999)
  end
end
