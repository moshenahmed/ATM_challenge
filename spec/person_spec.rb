require './lib/atm.rb'
require './lib/person.rb'
require './lib/account.rb'

describe Person do
 subject { Person.new('Random')}

 before do
   Account.new(holder: subject, balance: 100)
   @atm = Atm.new
  end

  it 'add money to person account ' do
    subject.accounts[0].deposit(500)
    #@account.deposit(500) is another way to do it 
    expect(subject.accounts[0].balance).to eq 600
  end

  it 'deduct money when atm withdraw from balance' do
    subject.get_cash(40, subject.accounts[0], @atm, subject.accounts[0].pin)
    expect(subject.accounts[0].balance).to eq 60
  end
end
