require 'Car'

describe 'Car' do
    
    describe 'attributes' do
        
        it "allows reading and writing for :make" do
            car = Car.new
            car.make = "Test"
            expect(car.make).to eq("Test")
        end
    end
end