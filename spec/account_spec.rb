require './lib/atm.rb'
require './lib/person.rb'
require './lib/account.rb'

describe Account do

 before do
    @person = Person.new('The guy')
    @subject_2 = Account.new(holder: @person, balance: 100)
  end

  it 'expect new account holder name to be The guy' do
    expect(@subject_2.holder).to eq @person
  end

  it 'expect new account initial balance to be 100' do
    expect(@subject_2.balance).to eq 100
  end

  it 'add money to person account ' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  it 'deduct money when atm withdraw from balance' do
    subject.atm_withdraw(40)
    expect(subject.balance).to eq -40
  end
end
