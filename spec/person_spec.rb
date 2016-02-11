require './lib/person.rb'
require './lib/account.rb'

describe Person do
 subject { described_class.new('Thomas', balance: 50) }
 let(:account) { double('Account', holder: subject, balance: 100, pin: 1234, exp_date: "10/17") }
 let(:atm) { double(:atm) }

 before do
   subject.accounts << account
   allow(atm).to receive(:withdraw)
 end

 it 'should have access to the account information' do
   expect(subject.accounts[0]).to equal account
 end

 it 'should be able to create a new account' do
   subject.create_account(Account)
   expect(subject.accounts[1]).to be_kind_of Account
 end

 xit 'add withdrawn funds to @cash' do
   subject.get_cash(40, account, atm, account.pin)
   expect(subject.cash).to eq 40
 end
end
