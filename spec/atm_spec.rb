require './lib/atm.rb'

describe Atm do


 describe "ATM has sufficient funds" do
     before do 
        subject.funds = 1000     
     end 
     
    it "allows for withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234)).to eq true 
    end
    
    it "does not allow for withdraw of 5$ if oin is wrong" do
       expect(subject.withdraw(5, 4321)).to eq false 
    end
    
    it "does not allow for withdraw of 6$" do
       expect(subject.withdraw(6, 1234)).to eq false 
    end
    
    it "does not allow for withdraw of -10$" do
       expect(subject.withdraw(-10, 1234)).to eq 'No negative numbers, please!'
    end
  end
  
  describe "ATM is out of money" do
     before do
        subject.funds = 0 
     end
     
    it "rejects withdraw of 5$ if pin is okay" do
       expect(subject.withdraw(5, 1234)).to eq 'Sorry, withdrawal is not possible.' 
    end
  end
    
end
