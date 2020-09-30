require 'car'

describe 'Car' do
    
    describe 'attributes' do
        
        it "allows reading and writing for :make" do
            car = Car.new
            car.make = "Test"
            expect(car.make).to eq("Test")
        end

        it "allows reading and writing for :year" do
            car = Car.new
            car.year = 9999
            expect(car.year).to eq(9999)
        end
    end
end