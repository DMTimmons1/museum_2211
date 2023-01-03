require 'rspec'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
    let(:dmns) { Museum.new("Denver Museum of Nature and Science")}
    let(:patron_1) { Patron.new("Bob", 20) }

    let(:gems_and_minerals) do
        Exhibit.new({ name: "Gems and Minerals", cost: 0 })
    end
    let(:dead_sea_scrolls) do
        Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    end
    let(:imax) do
        Exhibit.new({name: "IMAX",cost: 15})
    end


    describe '#initialize' do
        it 'exists' do 
            expect(dmns).to be_an_instance_of(Museum)
        end

        it 'has attributes' do
            expect(dmns.name).to eq("Denver Museum of Nature and Science")
            expect(dmns.exhibits).to eq([])
        end
    end

    describe '#add_exhibit' do
        it "Adds an exhibit to our exhibits array" do
            dmns.add_exhibit(gems_and_minerals)
            dmns.add_exhibit(dead_sea_scrolls)
            dmns.add_exhibit(imax)

            expect(dmns.exhibits).to eq([gems_and_minerals, dead_sea_scrolls, imax])
        end
    end
end