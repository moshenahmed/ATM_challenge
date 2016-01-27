require './lib/atm.rb'
require './lib/person.rb'
require './lib/account.rb'

describe Account do
# before do
#    @person = Person.new('The guy')
#    @account = Account.new(holder: @person, balance: 100)
#    @balance = Account.balance
#  end

#  it 'creat new account under specific input' do
#    expect(subject.initialize(@person, @account.exp_date, @person.balance, @account.pin)).to eq ('The guy', "10/17", 100, @account.pin)
#  end

  it 'add money to person account ' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  it 'deduct money when atm withdraw from balance' do
    subject.atm_withdraw(40)
    expect(subject.balance).to eq -40
  end
end
