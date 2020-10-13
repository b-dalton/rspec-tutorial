describe 'Doubles' do
    
    it "allow stubbing methods" do
        dbl = double("Chant")
        allow(dbl).to receive(:hey!)
        expect(dbl).to respond_to(:hey!)
    end

    it "allow stubbing a response with a block" do
        
    end

    it "allow stubbing responses with #and_return" do
        
    end

    it "allow stubbing multiple methods with hash syntax" do
        
    end

    it "allows stubbing with a hash argument to #double" do
        
    end

    it "allow stubbing multiple responses with #and_return" do
        
    end

end