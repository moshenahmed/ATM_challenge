require './lib/account.rb'
require './lib/person.rb'

describe Account do
  let(:person) { double(name: "The guy", accounts: []) }
  let(:subject_2) { described_class.new(holder: :person, balance: 100) }
  #binding.pry
  it 'expect new account holder name to be The guy' do
    subject_2.holder == double()
  end

  xit 'expect new account initial balance to be 100' do
    expect(subject_2.balance).to eq 100
  end

  xit 'add money to person account ' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  xit 'deduct money when atm withdraw from balance' do
    subject.atm_withdraw(40)
    expect(subject.balance).to eq -40
  end
end
