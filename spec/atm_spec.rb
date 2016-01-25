require './lib/atm.rb'

describe Atm do

    it "respnds to #withdraw method" do
       expect(subject).to respond_to :withdraw
    end
    
    it "allows for withdraw of 5$" do
       expect(subject.withdraw(5)).to eq true 
    end
    
    xit "does not allow for withdraw of 6$" do
       expect(subject.withdraw(6)).to eq false 
    end
    
end
