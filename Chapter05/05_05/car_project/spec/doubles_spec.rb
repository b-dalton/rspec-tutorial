describe 'Doubles' do
    
    it "allow stubbing methods" do
        dbl = double("Chant")
        allow(dbl).to receive(:hey!)
        expect(dbl).to respond_to(:hey!)
    end

    it "allow stubbing a response with a block" do
        dbl = double("Chant")
        # When I say 'Hey!', you say 'Ho!'
        allow(dbl).to receive(:hey!) { "Ho!" }
        # "Hey!", "Ho!"
        expect(dbl.hey!).to eq("Ho!")
    end

    it "allow stubbing responses with #and_return" do
        dbl = double("Chant")
        # Preferred syntax
        # When I say "Hey!", you say "Ho!"
        allow(dbl).to receive(:hey!).and_return("Ho!")
        # "Hey!", "Ho!"
        expect(dbl.hey!).to eq("Ho!")
    end

    it "allow stubbing multiple methods with hash syntax" do
        dbl = double("Persons")
        # Uses #receive_messages, not #receive
        allow(dbl).to receive_messages(:full_name => "Mary Smith", :initials => "MTS")
        expect(dbl.full_name).to eq("Mary Smith")
        expect(dbl.initials).to eq("MTS")
    end

    it "allows stubbing with a hash argument to #double" do
        dbl = double("Person", :full_name => "Mary Smith", :initials => "MTS")
        expect(dbl.full_name).to eq("Mary Smith")
        expect(dbl.initials).to eq("MTS")
    end

    it "allow stubbing multiple responses with #and_return" do
        die = double("Die")
        allow(die).to receive(:roll).and_return(1, 5, 2, 6)
        expect(die.roll).to eq(1)
        expect(die.roll).to eq(5)
        expect(die.roll).to eq(2)
        expect(die.roll).to eq(6)
        expect(die.roll).to eq(6) # continues returning last value
    end

    context 'with partial test doubles' do
        
        it "allows stubbing instance methods on Ruby classes" do
            time = Time.new(2010, 1, 1, 12, 0, 0)
            allow(time).to receive(:year).and_return(1975)

            expect(time.to_s).to eq("2010-01-01 12:00:00 -0100")
            expect(time.year).to eq(1975)
        end

        it "allows stubbing instance methods on custom classes" do
            class SuperHero
                attr_accessor :name 
            end

            hero = SuperHero.new
            hero.name = "Superman"
            expect(hero.name).to eq("Superman")

            allow(hero).to receive(:name).and_return("Clark Kent")
            expect(hero.name).to eq("Clark Kent")
        end
    end

end