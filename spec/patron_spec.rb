require 'rspec'
require './lib/patron'

RSpec.describe Patron do
    subject(:patron_1) { described_class.new("Bob", 20) }

    
    describe "#initialize" do
        it "exists" do 
            expect(patron_1).to be_an_instance_of(Patron)
        end
    end
end