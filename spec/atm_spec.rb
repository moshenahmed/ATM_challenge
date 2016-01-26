require './lib/atm.rb'

describe Atm do
 # Check for validity if the card (exp date)
 # Check for card status :active or :deactivated
 # Subtract the withdrawal amount from ATM's availible funds
 # Handler for a case when user tries to withdraw more then ATM is currently holding
 # Present user with info about what banknotes he recieves
 # for example we are currently only holding 5$ bills [5, 5] = 10$, [5,5,5,5,5] = 25$
 # But in the future implementation we cam have 5, 10 & 20$ bills, then [5,20] = 25$

 context "has sufficient funds" do
     before do
        subject.funds = 1000
     end

    it "allows for withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234)).to eq true
    end

    it "does not allow for withdraw of 5$ if pin is wrong" do
       expect(subject.withdraw(5, 4321)).to eq false
    end

    it "does not allow for withdraw of 6$ even if pin is okay" do
       expect(subject.withdraw(6, 1234)).to eq false
    end

    it "does not allow for withdraw of -10$ even if pin is okay" do
       expect(subject.withdraw(-10, 1234)).to eq 'No negative numbers, please!'
    end

    it "subtract withdrawal amount from avilable funds" do
       expect(subject.remaining_available_funds(5, 1234)).to eq 995
    end
  end


  context "is out of funds" do
     before do
        subject.funds = 0
     end

    it "rejects withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234)).to eq 'Sorry, withdrawal is not possible.'
    end
  end

end
