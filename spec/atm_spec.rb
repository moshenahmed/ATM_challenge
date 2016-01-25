require './lib/atm.rb'

describe Atm do

    it "respnds to #withdraw method" do
       expect(subject).to respond_to :withdraw
    end
end
