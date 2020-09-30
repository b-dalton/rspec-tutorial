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

        it "allows reading and writing for :color" do
            car = Car.new
            car.year = "foo"
            expect(car.year).to eq("foo")
        end
<<<<<<< HEAD

        it "allows reading for :wheels" do
            car = Car.new
            expect(car.wheels).to eq(4)
        end
=======
>>>>>>> 8906c1cce39227b4cbd6b516484daea2beaeb46f
    end
end