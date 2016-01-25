require './lib/atm.rb'

describe Atm do


    
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
