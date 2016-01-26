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
        #subject.funds = 1000
     end

    it "allows for withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234, "10/17")).to eq 1
    end

    it "does not allow for withdraw of 5$ if pin is wrong" do
       expect(subject.withdraw(5, 4321, "10/17")).to eq "Wrong pin Brother!"
    end

    it "does not allow for withdraw of 6$ even if pin is okay" do
       expect(subject.withdraw(6, 1234, "10/17")).to eq "Please round up to the closest 5"
    end

    it "does not allow for withdraw if card is expired" do
       expect(subject.withdraw(5, 1234, "10/16")).to eq "Card is expired, please refer to Bank"
    end

    it "does not allow for withdraw of -10$ even if pin is okay" do
       expect(subject.withdraw(-10, 1234, "10/17")).to eq 'No negative numbers, please!'
    end

    it "subtract withdrawal amount from avilable funds" do
       subject.do_transaction(5)
       expect(subject.funds).to eq 995
    end
  end


  context "is out of funds" do
     before do
        subject.funds = 0
     end

    it "rejects withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234, "10/17")).to eq 'Sorry, withdrawal is not possible.'
    end
  end

  context "don't have enough funds" do
     before do
        subject.funds = 25
     end

    it "rejects withdraw of 30$ if funds are 25$" do
       expect(subject.withdraw(30, 1234, "10/17")).to eq 'Sorry, withdrawal is not possible.'
    end
  end
end
